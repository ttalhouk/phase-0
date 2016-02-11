#1.1 Think About Time
During this section I learned about the pomodoro/time boxing method for setting achievable goals in a fixed amount of time, or at least breaking up the task into focused bits and reflecting on the progress made during the session to help understand what can be achieved for the future and what needs further study or research to become more proficient and achieve the task in a future "time box".  This seems like a good strategy to try and implement as during my working time our meetings tend to get off topic and meander about loosing focus of the intended goal even if an agenda was established before hand.  Also using this method creates tangible results at the end of the session not just more tasks/action items as in previous project meetings.  I also learned techniques to develop habits and getting them to stick.  Typically there needs to be a trigger so I'll set aside time after dinner as study hour every night to work on projects and take breaks and make sure to recap and log progress to guide future learning time.

#1.2 The Command Line
A shell is a processor of commands and bash is the shell we've been learning to use.  The most challenging thing of learning the command line is trying to figure out the order to put things to make sure you move a file to where you want without a graphical cue.  But I liked how you can direct the output of a command to a new file.  I can see how that can be useful.  I was able to use the commands but it will take time to get comfortable with it.  Copying, moving, creating and reading files and directories seems to be the most important for now, though the searching through files for information is also useful.

'pwd': outputs the current working directory

'ls': lists the files and sub directories in the current directory

'mv': moves files

'cd': changes the current directory

'../': means the parent directory to the current directory

'touch': creates and empty file

'mkdir': makes a new directory

'less': prints the contents of the output of the command to one page at a time

'rmdir': removes a directory

'rm': removes a file

'help': was not part of the training but use man to look up the manual for commands

#1.4 Forking and Cloning

During this module I learned how to create a repository and fork an existing repository and bring it down using the command line using the git clone <url of the repository>.  This created the repository on my cloud 9 workspace which will be where the work is done

Creating a new repo

1. In GitHub click the + and add new repository
2. Enter repo name, description and relivent license informaiton and create it.
Forking a repo.  This is useful when you want to copy a repository to make something new from the existing files, not to bring it back to the original repository

1. Find a repo you would like to make a copy of and press the fork button
2. Select your account

To clone the repository for editing and future updates

1. open the repo you wish to clone
2. copy the HTTPS url
3. in the command line, navigate to the folder to contain the repo and type 'git clone <url you want to clone>'
The repository is now pulled down to your working directory
The process was fairly straight forward, though I did have to search around for how to delete a repository which was found under settings.  To delete the local copy from the command line I used 'rm -rf [dir name]'.