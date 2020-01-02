## intermezzio.github.io

This is Andrew Mascillaro's personal site built using [gohugo.io](Hugo).

### Setup

This repository has a main branch (build, not master) which contains the code that compiles into HTML/CSS/JS. The `docs/` folder of this repository is a worktree, and contains the compiled frontend code. This is the master branch. Finally, the folder `themes/hugo-whisper-theme` is a submodule of the Hugo Whisper Theme, which is used on this site.

### Fast Setup

To quickly set up the code, clone this repository (as shown in the next section) and run the following script to configure the repository.
```
./setup.sh
```

### Download the Code

1. First clone the repository with 
```
git clone git@github.com:intermezzio/intermezzio.github.io.git 
```
2. Then, add the master worktree with
```
git worktree add -B master docs/ origin/master
```
3. Finally, remove the old submodule and add it again
```
cd themes/
rm -rf hugo-whisper-theme
git rm --cached hugo-whisper-theme
git submodule add git://github.com/intermezzio/hugo-whisper-theme.git
cd ..
```

### Run the Code

First, make sure you have `hugo` installed on your computer.

- Windows: `choco install hugo`
- MacOS: `brew install hugo`
- Linux: 
    - `snap install hugo`
    - `pacman -S hugo`

To run the code on localhost, type `hugo server` and navigate to [localhost:1313](localhost:1313).

To deploy the code to the `docs/` folder, type `hugo`.

