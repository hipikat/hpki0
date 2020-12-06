# Ada's little website

This repo was made by Ada Wright, to host their personal website at
<https://hpk.io>.

It's built with [Django CMS](https://django-cms.org/) on the backend,
[Zurb Foundation](https://get.foundation) on the frontend, and uses
[Webpack](https://webpack.js.org) as a bundler.

---

## Installation

First ensure you have the correct versions of Python and Node installed. I
recommend using [Pyenv](https://github.com/pyenv/pyenv) and
[Nodenv](https://github.com/nodenv/nodenv). This guide also assumes you're
using [Pipenv](https://docs.pipenv.org) to manage your Python virtual
environments.

The desired Node version is in
[.node-version](./.node-version), and [Pipfile](./Pipfile) lists the Python
version under `python_full_version`. You can explicitly pass `pipenv` a path
to the correct Python binary with the `--python` argument.

Get the source, and create a virtualenv with all Python dependencies.

    ~/code § git clone https://github.com/hipikat/hpk.io.git
    ~/code § cd hpk.io
    ~/code/hpk.io § pipenv install --dev
    [...]
    To activate this project's virtualenv, run pipenv shell.
    Alternatively, run a command inside the virtualenv with pipenv run.

Install all Node dependencies:

    ~/code/hpk.io § npm install --save-prod --save-dev
    [...]
    added 1038 packages from 495 contributors and audited 1039 packages in 10.377s
