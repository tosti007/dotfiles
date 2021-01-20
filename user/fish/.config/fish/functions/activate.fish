function activate -d "Source a virtual environment if possible"
    set -l activate_file (find -maxdepth 3 -type f -name "activate.fish")
    if test -z $activate_file
        echo "There is no environment to activate" 1>&2
        return 1
    end
    source $activate_file
end

