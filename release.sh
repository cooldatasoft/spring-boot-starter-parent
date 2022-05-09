#!/usr/bin/env bash

CURRENT_VERSION="2.6.3"
RELEASE_VERSION="2.6.4"

echo "CURRENT DIR : $PWD"
git checkout develop
git pull


sed -i "s#<version>${CURRENT_VERSION}</version>#<version>${RELEASE_VERSION}</version>#g" pom.xml
sed -i "s#<version>${CURRENT_VERSION}</version>#<version>${RELEASE_VERSION}</version>#g" README.md

echo "Commiting RELEASE changes to git repo."
git add -A
git status
git commit -m "@RELEASE ${RELEASE_VERSION}"
git push


mvn -DperformRelease=true clean compile deploy
rc=$?
if [ $rc -ne 0 ]; then
  echo 'Release failed to build! Exiting...'
  exit $rc
fi

#  tag release source at this point
echo "Creating release tag for version : ${RELEASE_VERSION}"
git tag -a release/${RELEASE_VERSION} -m "Tagging release ${RELEASE_VERSION}"
git push origin --tags


echo "Merging develop -> master "
git pull
git checkout master
git pull
git merge develop
git push origin master
git checkout develop


echo "COMPLETED"
exit

