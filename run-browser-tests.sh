dir=$(dirname $0)
echo $dir/seccomp_profile.json
docker run --rm \
 -v $TESTS_DIR:/test \
 --user pwuser \
 --security-opt seccomp=$dir/seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "$ROBOT_COMMAND"
