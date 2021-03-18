function xr --description 'wraps the bash xr function'
    if not set -q XR_HOME; or not test -e $XR_HOME/xr.sh
        echo "set the XR_HOME global exported variable to where you've cloned PaulDance/xr" >&2
        return 1
    end

    # Does this invocation specify a solution to download?
    set -lx EXO_UUID (string match -r -- '\b[[:xdigit:]]{32}\b' (string join -- ' ' $argv))

    # invoke the bash xr function
    set -l tmp (mktemp)
    bash -c '
        source $XR_HOME/xr.sh
        xr "$@"
        # if the uuid is provided, xr will download and cd
        [[ $EXO_UUID ]] && printf "\nSolution directory:\n%s\n" "$PWD"
    ' bash $argv | tee $tmp

    # if a download, cd there
    test (count $EXO_UUID) -gt 0; and cd (tail -1 $tmp)
    rm $tmp
end
