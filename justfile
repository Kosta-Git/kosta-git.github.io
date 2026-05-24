deploy source:
    find . -mindepth 1 -maxdepth 1 \
        -not -name '.git' \
        -not -name 'README.md' \
        -not -name 'justfile' \
        -exec rm -rf {} +
    cp -rf {{source}}/. .
    git add -A
    git commit -m "Deploy site"
    git push
