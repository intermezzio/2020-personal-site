git clone git@github.com:intermezzio/intermezzio.github.io.git
cd intermezzio.github.io

git worktree add -B master docs/ origin/master

cd themes/
rm -rf hugo-whisper-theme
git rm --cached hugo-whisper-theme
git submodule add git://github.com/intermezzio/hugo-whisper-theme.git
cd ..
