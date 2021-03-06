# SF Co. - Bash Utils.



### Attribution
---
- *Version:* `0.3.0`
- *Author:* **Jesse R Mykolyn** `<jrmykolyn@gmail.com>`
- *Link:* **N/A**



### Summary
---
**SF Co. - Bash Utils.** is a small library of simple `Bash` scripts, each of which is intended to simplify some aspect of web-development.



### Installation Instructions
---
- Start by downloading or cloning the `sfco-bash-utils` repository into the home folder for your user (eg. `~/johndoe`).
- Within your user's home holder, open the `.bash_profile` file and insert the following snippet:
	- `source ./sfco-bash-utils/manifest.sh`
- The snippet above assumes that you *haven't* renamed the repo folder. If you'd like to rename the folder, ensure that snippet is updated as well.
- If you followed the steps above, the SF Co. Bash Utils. should now be available. To confirm, open a new terminal window/tab and run `sfco-utils`.



### Functions
---
- **sfco-utils**
	- *Description*
		- When invoked, this function prints out a list of the any scripts which have been initialized by SF Co. Bash Utils.
	- *Examples*
		- `sfco-utils`
- **get-images** [-whnp] [--width --height --num --prefix]
	- *Description*
		- This function fetches images from the [**Lorem Pixel**][1] placeholder image service, and saves the returned files to the current directory.
	- *Examples*
		- `get-images --prefix="my-image-"`
		- `get-images -w=1000 -num=5`
		- `get-images -width=600 -h=400 -n=10`
- **go-up**
	- *Description*
		- This function is a wrapper around the `cd` command, and allows for faster, less verbose navigation *up* the file system. `go-up` may be called with a single argument of type integer, which indicates how many levels up the file system to traverse. Calling `go-up` without any arguments is equivalent to `cd ..`.
	- *Examples*
		- `go-up`
		- `go-up 3`
- **mk-sass** [-dm] [--dir --manifest]
	- *Description*
		- This function allows for the quick creation of SASS/SCSS 'partial' files. `mk-sass` takes the desired file name as the first argument, and creates a well-commented `*.scss` file in the current directory. `mk-sass` also adds a leading `_` character to the file name, as per SASS/SCSS 'partial' naming conventions.
		- If passed the `-d` or `--dir` flag, `mk-sass` will build a new directory using the file name provided, and insert the `*.scss` file there.
		- If passed the `-m` or `--manifest` flag, `mk-sass` will update the local 'manifest' file to include the new partial.
	- *Examples*
		- `mk-sass example-file-1`
		- `mk-sass example-file-2 -d`
		- `mk-sass example-file-3 --dir`
		- `mk-sass example-file-4 --m`
- **cp-pwd**
	- *Description*
		- This function copies the current directory path to the clipboard. `cp-pwd` does not take any arguments.
	- *Examples*
		- `cp-pwd`



### Thanks To
---
- [**Lorem Pixel**][1] for providing the placeholder image service on top of which the `get-images` function is built.

[1]: http://lorempixel.com