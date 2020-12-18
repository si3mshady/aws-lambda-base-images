FROM scratch

ADD 054ecfa471a70861a0dcb0764c7d4e23965e8e6fe1ae801069e56e2df0d17b1a.tar.xz /
ADD 158384ad565e9ddde6af6bd84188ccf30a9d7413a076cdebc139d6ed7d40e7d0.tar.xz /
ADD 49b363d4b00659cfb763fdcc06568e28dcf002dea9f0f7d119223d18737652d6.tar.xz /
ADD 70a85adb0e310c380cc9a1eb8566ae7a95d3c6865c7bdd4e37f97b427c7aa2c1.tar.xz /
ADD 84fbba0734fdf6f53e395ea0010243f0339781a30316ec18b3530451b5160824.tar.xz /
ADD d7b5b8e6fe7b3b1dd8ec8937c5195c7b01aa42caa9dcc4870ef605d32a290e19.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

