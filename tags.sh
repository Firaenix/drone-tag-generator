#! /bin/bash

declare -a tagsarray

declare BRANCH_COMMIT=""
declare SEMVER_TAG=$DRONE_TAG

# ONLY ADD branchname-commithash when DRONE_BRANCH exists ${DRONE_BRANCH}-${DRONE_COMMIT:0:8}
if [ ${DRONE_BRANCH} ]; 
  then BRANCH_COMMIT=${DRONE_BRANCH}-${DRONE_COMMIT:0:8}; 
fi

tagsarray=(${BRANCH_COMMIT} ${SEMVER_TAG})

# Print the values in the tags array, and remove commas if needed
echo $(printf "%s," "${tagsarray[@]}" | cut -d "," -f 1-${#tagsarray[@]}) > .tags
cat .tags