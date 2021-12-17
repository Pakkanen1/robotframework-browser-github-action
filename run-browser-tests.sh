dir=$(dirname $0)
docker run --rm \
 -v $TESTS_DIR:/test \
 --user pwuser \
 --security-opt seccomp=$dir/seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "chown -R pwuser:pwuser /test && $ROBOT_COMMAND"
