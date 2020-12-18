FROM scratch

ADD 2bd3c7225a7850246de774b771a468e4fdecccf74e13188198ed67404712468f.tar.xz /
ADD 564e2a278b45f611e355db1479e089d4948201d2e6ceb025ad838cc4b1b4ab43.tar.xz /
ADD 5d9d381bf9a7abfe7ce65c90510c8ad8e9f213872db6561d58ca3c8ea106ccf5.tar.xz /
ADD 5fc256be16f8a1a54216b5d1102c3490d0505b6e0cb2a46c92bb3f602521881d.tar.xz /
ADD c73e7f67e2bb3e35d73b2b6fecc01286068b949d35bc34521276157fe07a90a9.tar.xz /
ADD cb832ffcc3cf164cf11647863e23fb253ebff438f68352086adedff4f8ce4a71.tar.xz /
ADD de5f51002b2e3243a9b0dcc98ba340cd22bdb81116bab3f9b354cf033a706e8b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

