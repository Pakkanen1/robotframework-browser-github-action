dir=$(dirname $0)
docker run --rm \
 --user 1001:121 \
 -v $TESTS_DIR:/test \
 --security-opt seccomp=$dir/seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "$ROBOT_COMMAND"
