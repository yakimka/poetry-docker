ARG PYTHON_VERSION=3.10-slim
FROM python:${PYTHON_VERSION}

ARG POETRY_VERSION=1.6.1
ARG MULTI=false

RUN apt-get update \
  && apt-get install --no-install-recommends -y  \
    make \
    git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --no-cache-dir --upgrade pip \
    && python -m pip install --no-cache-dir poetry==$POETRY_VERSION \
    && poetry self add poetry-plugin-export \
    && if [ "$MULTI" != false ] ; then poetry self add poetry-multiproject-plugin poetry-polylith-plugin ; fi

ARG USER_ID=1001
ARG USER_NAME=poetry

RUN useradd --uid "$USER_ID" -ms /bin/bash  "$USER_NAME"

USER "$USER_NAME"
