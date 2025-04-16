FROM node:lts-bookworm-slim

# Dependencies
RUN apt update && apt install -y ffmpeg pipx

RUN npm i -g @peertube/peertube-runner

# Create peertube-runner user
RUN useradd -ms /bin/bash peertube-runner

USER peertube-runner

ENV PATH="$PATH:/home/peertube-runner/.local/bin"

RUN pipx install whisper-ctranslate2

ENTRYPOINT [ "peertube-runner", "server" ]
