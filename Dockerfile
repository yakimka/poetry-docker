ARG PYTHON_VERSION=3.10-slim
FROM python:${PYTHON_VERSION}

ARG POETRY_VERSION=1.6.1
ARG MULTI=false

RUN python -m pip install --no-cache-dir --upgrade pip \
    && python -m pip install --no-cache-dir poetry==$POETRY_VERSION \
    && if [ "$MULTI" != false ] ; then poetry self add poetry-multiproject-plugin poetry-polylith-plugin ; fi
