*How does tracking and adding changes make developers' lives easier?*
Tracking changes allows developers to review what has been changed and when so that if an issue arises they can go back.  It also allows for colaboration on projects.

*What is a commit?*
A commit is a save point.  Once changes have been made and added commit stores the changes.

*What are the best practices for commit messages?*
Commit messages should be descriptive and read like commands.

*What does the HEAD^ argument mean?*
`HEAD` removes an add so that the file can be modified.

*What are the 3 stages of a git change and how do you move a file from one stage to the other?*
`git pull` pulls the copy of the repo for changes to be made locally
`git add` adds the changes to the file or directory to be committed
`git commit` commits the changes to the .git directory which can then be pushed back to the repository

*Write a handy cheatsheet of the commands you need to commit your changes.*
`git add [file name]` stages the files for commit
`git commit -m "message"` commits the changes with the message to the commit file

*What is a pull request and how do you create and merge one?*
pull request is to check the local copy with origin.  `git pull origin master` brings in the latest copy of the repository

*Why are pull requests preferred when working with teams?*
It allows for the team members to work from the up to date copy.