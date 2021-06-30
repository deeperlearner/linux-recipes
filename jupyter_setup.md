# [jupyter-vim-binding](https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation)

## Activate the extensions configurator

```
jupyter nbextensions_configurator enable --user
```

## Add vim_binding to IPython-notebook-extensions

```
mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding
```

# [jupyter-themes](https://github.com/dunovank/jupyter-themes)

```
jt -t gruvboxd -vim
```
