dir=$(dirname $0)
docker run --rm \
 --user pwuser \
 -v $TESTS_DIR:/test \
 --security-opt seccomp=$dir/seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "$ROBOT_COMMAND"
