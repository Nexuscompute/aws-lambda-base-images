FROM scratch

ADD 6eb9e3bccebd317cc8aeaf2308800ccb45f6f3f4154f4391d34903188315aed3.tar.xz /
ADD b8390a4ab3a0ee8606862dd1cb4798ccd4b8ae7770416e17761ba0db05ffc73d.tar.xz /
ADD b850cd5ab66c324ae1a5991cbefbe27c2de62dace570e7fd800daa68733a2d1a.tar.xz /
ADD c4e47146d6668e52814b2a409de1e9f5d79ebcaa007930e79883822484688e21.tar.xz /
ADD f2019654a1e57fc30765298cab00da7419058b0b4c22072f0b742e07661bd375.tar.xz /
ADD fc68bf24bb835742e7182fa448f166a52b67e5759643f63d99ee2edff66665a5.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]