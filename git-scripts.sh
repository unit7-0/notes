# remove stale local branches
git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git br -d
