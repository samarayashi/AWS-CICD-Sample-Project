#!/bin/bash
echo $TRAVIS_BRANCH


case "$TRAVIS_BRANCH" in
"production"|"staging"|"master")
    echo "=====================step install=========================="
        npm config set package-lock false
        echo "=====================run webpack==========================="
        npm install
        npm run build
        echo "=====================install done=========================="
    ;;
*)
    echo "=====================skip install=========================="
    ;;
esac
