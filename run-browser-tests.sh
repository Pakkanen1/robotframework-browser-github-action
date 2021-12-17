sudo mkdir $REPORTS_DIR && sudo chmod 777 $REPORTS_DIR
docker run --rm \
 -v $TESTS_DIR:/test:Z \
 -ipc=host --user pwuser \
 seccomp=seccomp_profile.json \
 $IMAGE:$IMAGE_VERSION \
 bash -c "${ROBOT_COMMAND}"
