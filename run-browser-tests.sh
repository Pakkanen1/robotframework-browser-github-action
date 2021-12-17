dir=$(dirname $0)
docker run --rm \
 -v $TESTS_DIR:/home/pwuser/test \
 --user pwuser \
 --security-opt seccomp=$dir/seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "$ROBOT_COMMAND"
