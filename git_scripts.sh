# remove stale local branches
git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git br -d

# remove remote branches by specified argument
git branch -r | grep $1 | sed "s/origin\///" | xargs git push origin --delete
