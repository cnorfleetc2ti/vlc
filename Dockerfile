FROM alpine:3.7
RUN apk add --no-cache vlc
RUN addgroup -S vlc_group && adduser -S vlc_user -G vlc_group
USER vlc_user
WORKDIR /home/vlc_user
ENTRYPOINT ["cvlc"]