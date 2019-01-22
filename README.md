[![Follow on Twitter](https://img.shields.io/twitter/follow/opendevsecops.svg?logo=twitter)](https://twitter.com/opendevsecops)
[![Docker Stars](https://img.shields.io/docker/stars/opendevsecops/gitleaks.svg)](https://hub.docker.com/r/opendevsecops/gitleaks/)
[![Docker Pulls](https://img.shields.io/docker/pulls/opendevsecops/gitleaks.svg)](https://hub.docker.com/r/opendevsecops/gitleaks/)
[![Docker Automated](https://img.shields.io/docker/automated/opendevsecops/gitleaks.svg)](https://hub.docker.com/r/opendevsecops/gitleaks/)
[![Docker Build](https://img.shields.io/docker/build/opendevsecops/gitleaks.svg)](https://hub.docker.com/r/opendevsecops/gitleaks/)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/76f31a952a244277a92f42d0de3f833b)](https://www.codacy.com/app/OpenDevSecOps/docker-gitleaks?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=opendevsecops/docker-gitleaks&amp;utm_campaign=Badge_Grade)

# Gitleaks

This docker container includes Zachary Rice [Gitleaks](https://github.com/zricethezav/gitleaks) with a few extras.

## Getting Started

This container is built automatically by Docker Hub. Simply pull to get latest build.

```sh
docker pull opendevsecops/gitleaks
```

Extensive documentation how to use this tool is available in the offical [docs](https://github.com/megafork/gitleaks). All command-line options can be supplied directly to the container entrypoint. For example to scan this repository use the following docker command:

```sh
docker run opendevsecops/gitleaks --repo=https://github.com/opendevsecops/docker-gitleaks
```

## Configs

This container comes with a number of configs to support various types of tasks.

### aws-enum.toml

This config looks for AWS-specific leaks to help identify AWS account ids and other types of data which can be used to enumerate AWS resources.

```sh
docker run opendevsecops/gitleaks --config=/run/configs/aws-enum.toml --github-org=target
```
