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
[Nodenv](https://github.com/nodenv/nodenv).

The desired Python version is specified in [Pipfile](./Pipfile) as
`python_full_version`, and [.node-version](./.node-version) contains the
version of Node you'll need.

You can explicitly pass the path to the correct Python binary to `pipenv` with
the `--python` argument.

    ~/code § git clone https://github.com/hipikat/hpk.io.git
    ~/code § cd hpk.io
    ~/code/hpk.io § pipenv install --dev
