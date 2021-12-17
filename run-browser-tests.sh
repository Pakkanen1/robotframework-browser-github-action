docker run --rm \
 -v $TESTS_DIR:/test \
 --user pwuser \
 --security-opt seccomp=seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "$ROBOT_COMMAND"
