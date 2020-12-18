FROM scratch

ADD 2af8633ca2ef8b90051e1378d6abe0c448484aacc3c0ec3487de08ad3fbba5e0.tar.xz /
ADD 49b363d4b00659cfb763fdcc06568e28dcf002dea9f0f7d119223d18737652d6.tar.xz /
ADD 5b6fc5d5446853454c8bd519c1fafec2cba124fb125b817a9558f83f0d6d1530.tar.xz /
ADD 6e77c7bc02502129ff906227e2b1b9c6fde224586baea0fa7442b156fc83b666.tar.xz /
ADD 7b08b7c131db0fe17926edf1eb37faff6dfa6529b594c2d43373ca4a2862e0a0.tar.xz /
ADD f286c658e48c4dba0cfcad354522c0f0ab5beb57c72d75720d144d9395aa4901.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

