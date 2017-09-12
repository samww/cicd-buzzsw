#!/bin/sh
echo $DOCKER_EMAIL
echo $DOCKER_USER
echo $DOCKER_PASS
docker login -u samww -p dcatp4dock
#docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
#if [ "$TRAVIS_BRANCH" = "master" ]; then
#    TAG="latest"
#else
#    TAG="$TRAVIS_BRANCH"
#fi

docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
#docker build -f Dockerfile -t samww/cicd-buzzsw
docker push $TRAVIS_REPO_SLUG
#docker push samww/cicd-buzzsw