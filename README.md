# Open Workspaces via Batch file!

Easily open a series of webpages that are needed for various Pixel Planet Today workflows.

Batch files and what they do:

- `new-post.bat` opens websites used to post on social media about a new Pixel Planet Today post
- `new-blog-post.bat` opens websites used to post on the Pixel Planet Today blog

## Setup

To use the `new-post.bat` file, you must first tell your machine the location of the Pixel Planet Today 'days' folder. Follow the steps below to create this connection with a simple text file.

1. After cloning the repo to your machine, create a folder in the root called `file-paths`. The repo folder structure should look something like:
```
-file-paths
  |- //text files that act as variables
.gitignore
README.md
[.bat files]
```
2. Inside the new folder, create a `.txt` file that includes the file path to the Pixel Planet Today 'days' folder. Example:
```
C:\Users\username\path\to\folder\days
```
3. For quicker navigation, you can append this file path with the current year (such as `\year04-22-to-23`):
```
C:\Users\username\path\to\folder\days\year04-22-to-23
```

**Note:** These configurations align with a general Windows setup. You may have to make adjustments depending on your OS and folder structure.
