
FROM alpine
RUN --mount=type=secret,id=github_token \
    a=$(cat /run/secrets/github_token)
RUN $a