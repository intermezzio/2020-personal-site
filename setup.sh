git worktree add -B master docs/ origin/master

cd themes/
rm -rf hugo-whisper-theme
git rm --cached hugo-whisper-theme
git submodule add https://github.com/intermezzio/hugo-whisper-theme.git
cd ..
