FROM node:lts-bookworm-slim

# Dependencies
RUN apt update && apt install -y ffmpeg pipx && \
    pipx ensurepath && \
    pipx install whisper-ctranslate2

RUN npm i -g @peertube/peertube-runner

RUN useradd -ms /bin/bash peertube-runner

USER peertube-runner

ENTRYPOINT [ "peertube-runner", "server" ]
