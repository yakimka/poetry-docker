# Poetry Docker

Poetry in docker.

Tags description:

Mask: `{poetry-version}[-multiproject]-py{python-version}`
- `poetry-version` - poetry version, e.g. `1.6.1`
- `multiproject` - if present, means that poetry is installed with `poetry-multiproject-plugin` and `poetry-polylith-plugin` plugins
- `python-version` - python version, e.g. `3.10-slim`

Examples:
- `1.6.1-py3.10-slim` - poetry 1.6.1 with python 3.10-slim image
- `1.6.1-multi-py3.11` - poetry 1.6.1 with multiproject plugins with python 3.11 image
