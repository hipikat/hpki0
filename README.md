# Ada's little website

This repo was made by Ada Wright, to host their personal website at
<https://hpk.io/>...

It's built with [Django CMS](https://django-cms.org/) on the backend,
[Zurb Foundation](https://get.foundation) on the frontend, and uses
[Webpack](https://webpack.js.org) as a bundler.

---

## Installation

System software requirements:
* [Docker](https://www.docker.com)
* [PostgreSQL](https://www.postgresql.org)

Ensure you have the correct versions of Python and Node installed - I
recommend using [Pyenv](https://github.com/pyenv/pyenv) and
[Nodenv](https://github.com/nodenv/nodenv) to manage multiple installs
of each. I'd also suggest
using [Pipenv](https://docs.pipenv.org) to manage your Python virtual
environments.

> $ nodenv install $(cat .node-version)
> $ pyenv install $(cat Pipfile | grep version | cut -d'"' -f 2)

Get the source, and create a virtualenv with all the Python dependencies installed:

    ~/code § git clone https://github.com/hipikat/hpk.io.git
    ~/code § cd hpk.io
    ~/code/hpk.io § pipenv install --dev
    [...]
    To activate this project's virtualenv, run pipenv shell.
    Alternatively, run a command inside the virtualenv with pipenv run.

Install all development and production Node dependencies:

    ~/code/hpk.io § npm install --save-prod --save-dev
    [...]
    added 1038 packages from 495 contributors and audited 1039 packages in 10.377s

Link the package's `.env` file to an appropriate configuration file:

    ~/code/hpk.io § ln -s etc/env.local ./.env

Create a database (named in [.env](./.env)), and get Django to initialise it:

    ~/code/hpk.io § createdb hpkio
    ~/code/hpk.io § pipenv run manage migrate
    Loading .env environment variables...
    Operations to perform:
        Apply all migrations: admin, auth, bootstrap4_alerts, [...]
