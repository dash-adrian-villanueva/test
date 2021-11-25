
FROM alpine
RUN --mount=type=secret,id=SUPERPRIVATEKEY && \
    mkdir /root/.ssh/ && \