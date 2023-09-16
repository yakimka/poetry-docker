# Poetry Docker Image

[![Build Status](https://github.com/yakimka/poetry-docker/actions/workflows/workflow-ci.yml/badge.svg?branch=master&event=push)](https://github.com/yakimka/poetry-docker/actions/workflows/workflow-ci.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/yakimka/poetry)](https://hub.docker.com/r/yakimka/poetry)

This repository provides a Docker image with [Poetry](https://python-poetry.org/) pre-installed,
making it easier for users to manage Python project dependencies inside a Docker container.

## How to Use

To run a Docker container with the desired version of Poetry, use:

```bash
docker run -it --rm yakimka/poetry:VERSION
```

Replace `VERSION` with the [appropriate tag](https://hub.docker.com/r/yakimka/poetry)
based on the versions and configurations you desire.

## Understanding the Tags

Tags for this image follow a specific format:

```
{poetry-version}[-multi]-py{python-version}
```

- `poetry-version`: The version of Poetry installed. For example, `1.6.1`.
- `multi`: If this segment is present, it indicates that Poetry is configured with the `poetry-multiproject-plugin` and `poetry-polylith-plugin`.
- `python-version`: The version of Python in the image. For example, `3.10-slim`.

### Examples

- `1.6.1-py3.10-slim`: This denotes an image with Poetry version 1.6.1 and Python version 3.10 (using the slim variant).
- `1.6.1-multi-py3.11`: This indicates Poetry version 1.6.1, configured with multiproject plugins, and Python version 3.11.
