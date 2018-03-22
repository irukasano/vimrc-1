try:
    import concurrent.futures as futures
except ImportError:
    try:
        import futures
    except ImportError:
        futures = None

import sys
#import zipfile
import shutil
import tempfile
#import requests
import subprocess

from os import path


#--- Globals ----------------------------------------------
PLUGINS = """
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack
ack.vim https://github.com/mileszs/ack.vim
bufexplorer https://github.com/corntrace/bufexplorer
ctrlp.vim https://github.com/ctrlpvim/ctrlp.vim
mayansmoke https://github.com/vim-scripts/mayansmoke
nerdtree https://github.com/scrooloose/nerdtree
nginx.vim https://github.com/chr4/nginx.vim
open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim
snipmate-snippets https://github.com/scrooloose/snipmate-snippets
tlib https://github.com/vim-scripts/tlib
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-colors-solarized https://github.com/altercation/vim-colors-solarized
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-less https://github.com/groenewege/vim-less
vim-markdown https://github.com/tpope/vim-markdown
vim-pyte https://github.com/therubymug/vim-pyte
vim-snipmate https://github.com/garbas/vim-snipmate
vim-snippets https://github.com/honza/vim-snippets
vim-surround https://github.com/tpope/vim-surround
vim-expand-region https://github.com/terryma/vim-expand-region
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-fugitive https://github.com/tpope/vim-fugitive
goyo.vim https://github.com/junegunn/goyo.vim
vim-zenroom2 https://github.com/amix/vim-zenroom2
syntastic https://github.com/scrooloose/syntastic
vim-repeat https://github.com/tpope/vim-repeat
vim-commentary https://github.com/tpope/vim-commentary
vim-gitgutter https://github.com/airblade/vim-gitgutter
gruvbox https://github.com/morhetz/gruvbox
vim-flake8 https://github.com/nvie/vim-flake8
vim-pug https://github.com/digitaltoad/vim-pug
lightline.vim https://github.com/itchyny/lightline.vim
vim-abolish https://github.com/tpope/tpope-vim-abolish
mru.vim https://github.com/vim-scripts/mru.vim
vim-markdown https://github.com/plasticboy/vim-markdown
vim-ref https://github.com/thinca/vim-ref
taglist.vim https://github.com/vim-scripts/taglist.vim
neocomplcache.vim https://github.com/Shougo/neocomplcache.vim
vim-php-cs-fixer https://github.com/stephpy/vim-php-cs-fixer
""".strip()

GITHUB_ZIP = '%s/archive/master.zip'
GITCLONE_CMD = '/usr/bin/git clone %s.git %s/%s'

SOURCE_DIR = path.join(path.dirname(__file__), 'sources_non_forked')

def git_clone(plugin_name, git_clone_command):
    print('Start {0}'.format(plugin_name))
    sys.stdout.write('- {0} -> '.format(git_clone_command))
    res = subprocess.call(git_clone_command.split())
    print(res)
    if ( res == 0 ):
        print('Updated {0}'.format(plugin_name))
    else:
        print('Failed {0}'.format(plugin_name))


def update(plugin):
    name, github_url = plugin.split(' ')
    git_clone_command = GITCLONE_CMD % (github_url, SOURCE_DIR, name)
    git_clone(name, git_clone_command)


if __name__ == '__main__':
    temp_directory = tempfile.mkdtemp()

    try:
        if futures:
            with futures.ThreadPoolExecutor(16) as executor:
                executor.map(update, PLUGINS.splitlines())
        else:
            [update(x) for x in PLUGINS.splitlines()]
    finally:
        shutil.rmtree(temp_directory)
