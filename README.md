# Open Workspaces via Batch file!

Easily open a series of webpages and other applications that are needed for various Pixel Planet Today workflows.

Batch files and what they do:

- `new-post.bat` opens websites used to post on social media about a new Pixel Planet Today post
- `new-blog-post.bat` opens websites used to post on the Pixel Planet Today blog

**Note**: Workflows started within the batch file are meant for administrative purposes. However, others may find the repo useful for creating their own micro-optimization batch files. 

<br>

## Setup

In order to use these batch files as intended, you will need to make a series of `.txt` files that include resource locations. This is used to keep personal data only on your computer (and not your repo). These reference files will be located inside `/file-paths`. The repo folder structure should look something like:
```
-file-paths
  |- //text files that acting as private variables
.gitignore
README.md
[.bat files]
```

Inside this folder, you will need to create files for the path for Pixel Planet Today post graphics, URL for Meta Creator Studio, and Carbonii uploads (unless you are repurposing this repo for your own personal use case, then these should be whatever you like).

Each file should be prepended with `secret` to automatically be ignored by git and should only contain the secret variable. For example, the `secret_ppt-days_folder.txt` file should look something like:

```
C:\Users\username\path\to\folder\days
```

Another example, would be a `secret_meta-studio_url.txt` file that includes the path to your dashboard:

```
https://business.facebook.com/latest/content_calendar?asset_id=010101010101&nav_ref=page_composer_interruption&business_id=010101010101
```

**Note:** These configurations align with a general Windows setup. You may have to make adjustments depending on your OS and folder structure.
