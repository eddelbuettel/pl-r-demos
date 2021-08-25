#!/bin/sh
#
# Simple runner script _for Linux_.  Should be generalized to also server for macOS.
#
# (C) Dirk Eddelbuettel 2018-2021 and GPL'ed

JOBSDIR=${HOME}/git/pl-ag-jobs

docker run \
       --interactive=true \
       --tty=true \
       --rm=true \
       --publish 3000:3000 \
       --add-host=host.docker.internal:172.17.0.1 \
       --volume $PWD:/course \
       --volume ${JOBSDIR}:/jobs \
       --volume /var/run/docker.sock:/var/run/docker.sock \
       --env HOST_JOBS_DIR=${JOBSDIR} \
       prairielearn/prairielearn
