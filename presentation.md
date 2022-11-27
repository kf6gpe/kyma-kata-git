% Using Git --- An introduction for the Kyma Kata
% Ray Rischpater, KF6GPE kf6gpe@lothlorien.com | kf6gpe.org  
% December 2021

# What is version control?
- Software to track _revisions_ to files.
- Software to share files with revisions with other users.
- Software to permit multiple people to change the same file (with caveats)

# What is git?
- Software & protocol for sharing files between users.
- Distributed system
  - Repositories are unique to users.
  - Repositories are synchronized between instances.

# What is Github?
- A service provider that hosts repositories for users.
- Repositories can belong to users, or organizations (such as the Kyma Kata organization)

# Common terminology (1)
- A _repository_ is a collection of files and their revisions.
- A _branch_ is a collection of changes and revisions along a particular stream of work. There is always the _master_ branch.
- A _commit_ is a collection of files and comments that have been changed and committed to the repository

# Common terminology (2)
- A _hash_ is a way to refer to a commit. All commits have hashes.
- A _tag_ is a human-readable way to refer to a commit. You can tag any commit.
- A _diff_ is a comparison between two files.

# Commands & protocols
- `git` is the command line utility used to manage a repository.
- A _git client_ provides a graphical user interface over `git`.
- `ssh` is a secure protocol for carrying revisions between servers.

# Getiting started
- Sign up for a Github account.
- Choose and install a git client.
- Configure `ssh` access using Github and your git client. (Google this, it depends!)


# Some handy `git` clients
- [Github Desktop](https://desktop.Github.com/) - Free
- [Visual Studio Code](https://code.visualstudio.com/) - Free - More than git!
- [SmartGit](https://www.syntevo.com/smartgit/) - Free for noncommercial use, payware
  
# Workflow
1. Create or clone a repository
2. _Sync_ your repository with Github.
3. Make changes.
4. _Stage_ files to be committed.
5. _Commit_ the changes.
6. _Push_ your files to the repository.
7. Return to step 2.

# Demo
- (Demo) How to clone the Kyma Kata repository using Visual Studio Code.
- (Demo) How to commit a file to the Kyma Kata repository.
- (Demo) How to remove a file from the Kyma Kata repository.

# Other things you may want to do.
- Look at git's log of changes.
- Tag revisions you want to return to easily.

# Demo (2)
- Staging and unstaging using Visual Studio Code
- Looking at the log in Visual Studio Code
- Tagging a commit in Visual Studio Code

# Kyma Kata warnings
- Git is best with text files.
- Diffs are text-based, and rely on the context behind the text.
- Kyma uses binary files, so:
  - Don't branch.
  - Don't expect diffs to work: one person should be changing a `.kym` file at a time.
- Github limits file sizes for large files 
  - Github.com isn't a good place to share WAV, `.tau`, and other large binary files.

# Handy links
- [Github](http://github.com)
- [Using Visual Studio Code for change control](https://code.visualstudio.com/docs/sourcecontrol/overview)
- [(Almost) everything about git](https://git-scm.com/doc)
