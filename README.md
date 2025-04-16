# Peertube Runner Docker Container

This repository contains a Docker container designed to run the Peertube Runner. It is built on the lightweight Node.js base image `node:lts-bookworm-slim` to optimize performance and resource usage.

## Usage

To run the container:

```sh
docker run [OPTIONS] danny900714/peertube-runner
```

Ensure that you mount your configuration file at the following path inside the container:

```
/home/peertube-runner/.config/peertube-runner-nodejs/default/config.toml
```

This configuration file is required for the proper operation of the Peertube Runner. Please supply your own configuration file at that location.

## Reference

This documentation format follows the standards used in library Docker container documentation to ensure clear and concise information for users.

For any questions or further setup instructions, please refer to the official documentation of [Peertube Runner](https://docs.joinpeertube.org/maintain/tools#peertube-runner) or contact support.
