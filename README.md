# drone-tag-generator
Docker image that generates docker tags based on a shell script.

Reads from the following Environment Variables:
- DRONE_BRANCH
- DRONE_COMMIT
- DRONE_TAG

Generates a .tags file and also `cat`'s the output to stdout.

Eg.

`$ docker run -e DRONE_BRANCH=master -e DRONE_COMMIT=7234abcd -e DRONE_TAG=1.0.0 drone-gen`
`master-7234abcd,1.0.0`
