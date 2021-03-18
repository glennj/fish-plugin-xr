# fish completions for xr subcommands
#
complete -c xr -f -k -n __fish_use_subcommand -a bench -d "download a given submission, import a custom benchmark and run it"
complete -c xr -f -k -n __fish_use_subcommand -a test -d "download a given submission and run its tests"
complete -c xr -f -k -n __fish_use_subcommand -a edit -d "open editor on mentoring notes from deduced or given exercise"
complete -c xr -f -k -n __fish_use_subcommand -a notes -d "print mentoring notes from deduced or given exercise or topic"
complete -c xr -f -k -n __fish_use_subcommand -a clean -d "remove downloaded submissions"
complete -c xr -f -k -n __fish_use_subcommand -a help -d "display a detailled description"
