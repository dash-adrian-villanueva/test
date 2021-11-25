
FROM ubuntu
RUN --mount=type=secret,id=SUPERPRIVATEKEY \
    mkdir /root/.ssh/ && \
    echo "${ echo "$(cat /run/secrets/SUPERPRIVATEKEY)"}" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa && \
    touch /root/.ssh/known_hosts && \
    ssh-keyscan github.com >> /root/.ssh/known_hosts