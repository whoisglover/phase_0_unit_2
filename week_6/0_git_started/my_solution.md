## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add

Files need to be added to the 'staging area' before you can commit/upload the changes you decide to make to them.  Git add filename performs this staging operation.  Git add -a adds all the untracked files in the directory.
<!-- Your defnition here -->

#### branch
A branch is a copy of the entire code that can be modified without having an effect on the current status of the code.
This is perfect for development since you can branch the code, make changes, and if it breaks the code you haven't broken
the main code you had working originally and if it works you can merge back to the original code and add your changes.
The main code is held on a 'master' branch and that master branch can be branched.
<!-- Your defnition here -->

#### checkout
git checkout is a command to switch between branches.  It is used by typing git checkout branchname (branchname being the name of the branch you wish to switch to)
<!-- Your defnition here -->

#### clone
Cloning completely copies a repository (your code) in a new location.  This is used so multiple people can get the code on their computer and work at the same time.  Cloning is used by typing git clone [url] (url being the url of the git repository)
<!-- Your defnition here -->

#### commit
Git saves the changes you have made to the code.  It doesnt add them into the main code if you are working on a remote repository.
<!-- Your defnition here -->

#### fetch
Fetch updates your local repository with any changes that have been made to the remote repo yours is based upon.
<!-- Your defnition here -->

#### log
Log shows all of the commits that have been made so far.  this includes author, date, conflicts, and corresponding merge message.
<!-- Your defnition here -->

#### merge
Merge combines two branches.  It is used when you are satisfied with the work you have completed on a branch and want to put it back into the main code.
<!-- Your defnition here -->

#### pull
Pull is a combination of fetch followed by merge.  This gets any new data from the remote repo you are using and automagically merges it into the branch that you are working in.
<!-- Your defnition here -->

#### push
Once you have commited your changes and are happy with the effects you use 'push' to apply those changes to the remote repository and make them more permanent  (nothing is totally permanent because commits can always be rolled back).
<!-- Your defnition here -->

#### reset
Reset is used to roll back changes that you want to undo.  This works by moving the 'head' pointer back to a previous commit. The actual line of code is git reset HEAD. This will move you back one commit as if you had never done git add or git commit.
<!-- Your defnition here -->

#### rm
Rm is short for remove.  This is basically the opposite of git add.  This removes a file from being tracked and any changes to it will no longer be staged for the next commit. 
<!-- Your defnition here -->

#### status


## Release 4: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally

## Release 5: Reflection

I accidently deleted the 0_git_started by syncing with the Devbootcamp version that was after my cohort's final version was established.  I understand the concepts above very well and until now have been having great success with git and github so far.  One thing I do not feel comfortable with is rolling back commits so I plan using office hours this week to learn how to do that and hopefully fix the issues I created by syncing to a version that is too modern.  I also believe this syncing issue is affecting my ability to post this weeks blogs.