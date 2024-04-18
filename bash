# Git stuff

# Call the function to display how long ago the repository was last updated
calculate_last_updated() {
    # Get the last commit date of the repository
    last_commit_date=$(git log -1 --format=%cd)

    # Calculate how long ago the repository was last updated
    last_updated=$(git log -1 --format=%cr)

    echo "Last updated: ${last_updated} (${last_commit_date})"
}

show_git_tree() {
    git log --graph --oneline --decorate --all
}

show_git_tree_with_author() {
    git log --graph --oneline --decorate --all --pretty=format:"%h %an %s"
}


# Java Stuff

show_dependency_tree() {
    mvn dependency:tree
}

