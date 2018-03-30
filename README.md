![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

# The Ultimate vimrc ( with php)

Thanks for amix/vimrc.

[amix/vimrc](https://github.com/amix/vimrc) は素晴らしい .vimrc です。
そのままでも充分使いやすいものですが、php の開発により役に立つプラグインと、
これまでの私の vim における慣れを追加しカスタマイズしました。

amix/vimrc をほとんどそのまま引き継いでおりますが、私の使いやすいように
勝手にいろいろと修正しています。そのため、使いやすい部分があれば amix/vimrc 
のおかげですが、もし問題点や使いづらい点があれば私が原因です。

せっかくなので（そして私自身のため）この README を日本語として書き起こしました。
もとの README を翻訳したものではなく、私自身がより理解を深め、
またもしほかの人が使う場合にも伝わりやすいように書いています。

また、現時点で私が理解しきっておらず、どうしてこのように動いているのか、
またこの挙動がどの設定やプラグインによるものなのか、
わからない部分もあります。

したがって誤記も当然あり得ますので、お気づきの方はご指摘くだされば幸いです。

---

この .vimrc セットには２つのバージョンがあります。

* **基本バージョン**：[basic.vim](https://github.com/irukasano/vimrc/blob/master/vimrcs/basic.vim)の内容をコピーし、~/.vimrc にペーストして使ってください
* **素敵バージョン**：役に立つプラグインやカラースキーム、その他 vim 設定がたくさん含まれているバージョンです。

私 irukasano ももちろん素敵バージョンを使っています。
基本バージョンは使っていないのでどんな使い勝手かも、正直わかりません。


## 素敵バージョンのインストール
### 自分だけ使う

自分だけ使いたい場合は、github から clone し、素敵バージョン用のインストールスクリプトを起動するだけです。
インストールスクリプトは、~/.vimrc に 素敵バージョンの vim 設定を追記しますので、
心配な方は実行前に現在の .vimrc をバックアップすることをお勧めします。

	git clone --depth=1 https://github.com/irukasano/vimrc-1.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh

### 複数ユーザーで使う
複数ユーザーで使う場合は、リポジトリから取得した vimrc の設定すべてに、すべてのユーザーがアクセスできる必要があります。
以下の例では、`/opt/vim_runtime` としていますが、すべてのユーザーがアクセスできるのであれば
このディレクトリである必要はありません。

	git clone --depth=1 https://github.com/irukasano/vimrc-1.git /opt/vim_runtime
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
	# to install for all users with home directories
	sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all

## フォント

もとの amix/vimrc では、[IBM Plex Mono font](https://github.com/IBM/plex) が勧められていますが
多分日本語を含むマルチバイトフォントのことは考えられていないと思います。

私が使っているのは、以下ですが、どちらも読みやすいと思います。

* MeiryoKe Console：Windows10 に付属のメイリオを等幅にしたものです。自分でメイリオにパッチをあてて作成します。参考）[Windows で見やすくて綺麗なフォント表示 - MeiryoKe に変更し、MacType で滑らかにする](https://digitalbox.jp/meiryoke-fixed-fonts-windows10/)
* Consolas：Microsoft Office についてくる等幅英字フォントです。ただ、そのままでは日本語がうまく表示できないため、たとえば TeraTerm ではちょっと設定を工夫してあげる必要があります。参考）[Windows7のTeraTermでConsolasフォント使用時に日本語を表示する方法](https://gist.github.com/o-gh/5ac244d2fc5d8002a6e32d0a15c7717d)


## 基本バージョンのインストール

基本バージョンは、プラグインなしの１ファイルのみです。
[basic.vim](https://github.com/irukasano/vimrc/blob/master/vimrcs/basic.vim) をコピーアンドペーストし、 自分の ~/.vimrc に張り付けします。
または、以下の方法で github から clone し、基本バージョン用のインストールスクリプトを起動するのでもできます。

	git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh


## How to install on Windows?

Use [msysgit](http://msysgit.github.com/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)


## Linux へのインストール

Linux では `vi` と `vim` がインストールされていることが多く、これらはとても良く似ているのですが異なるものです。
irukasano/vimrc-1 は（amix/vimrc と同様）、vim のための設定ファイルです。
`vi` と `vim` は ~/.vimrc を共有しているため、vi を起動すると、起動時にエラーが表示されます。

そこで、`vi` を起動した場合も `vim` が起動するように、以下のようにエイリアスを ~/.bashrc に設定してください。

    alias vi=vim

vim がインストールされていない環境では、vim をインストールしてください。

    (Ubuntu)
    apt-get install vim

    (CentOS)
    yum install vim


## 最新版へのアップデート方法

git rebase するだけです！

    cd ~/.vim_runtime
    git pull --rebase


## Some screenshots

Colors when editing a Python file:

![Screenshot 1](https://dnp4pehkvoo6n.cloudfront.net/07583008e4da885801657e8781777844/as/Python%20editing.png)

Opening recently opened files with the [mru.vim](https://github.com/vim-scripts/mru.vim) plugin:

![Screenshot 2](https://dnp4pehkvoo6n.cloudfront.net/1d49a88f9bd5d013c025bb1e1272a7d8/as/MRU%20plugin.png)

[NERD Tree](https://github.com/scrooloose/nerdtree) plugin in a terminal window:
![Screenshot 3](https://dnp4pehkvoo6n.cloudfront.net/ae719203166585d64728f28398f4b1b7/as/Terminal%20usage.png)

Distraction free mode using [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2):
![Screenshot 4](https://dnp4pehkvoo6n.cloudfront.net/f0dcc4c9739148c56cbf8285a910ac41/as/Zen%20mode.png)


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each plugin provides a much better Vim experience!

* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for `the_silver_searcher` (ag) or ack -- a wicked fast grep
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Quickly and easily switch between buffers. This plugin can be opened with `<leader+o>`
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<Ctrl+F>`
* [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2): 
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. This plugin can be opened with `<leader+f>`
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing `gf`
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage your vim runtimepath 
* [snipmate.vim](https://github.com/garbas/vim-snipmate): snipmate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts.see:http://vim.wikia.com/wiki/Indent_text_object
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S (due to YankRing)
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Maintains a history of previous yanks, changes and deletes
Remove all clutter and focus only on the essential. Similar to iA Writer or Write Room [Read more here](http://amix.dk/blog/post/19744)


## 同梱されているカラースキーム

* [gruvbox](https://github.com/morhetz/gruvbox):初期設定ではこれを使っています
* [peaksea](https://github.com/vim-scripts/peaksea): amix/vimrc の初期設定はこれです
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)

一時的に変更したい場合は、vim で以下のようにします。

    :colorscheme peaksea
    :set background=dark

永続的に変更したい場合、**~/.vim_runtime/vimrc/extended.vim** の colorscheme, background 設定の部分を書き換えてください。


## 同梱されているモード

※TODO ここはまだよくわかっていない

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/tpope/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim): Highlights configuration files for nginx
* [vim-go](https://github.com/fatih/vim-go)


## 自分用にカスタマイズするには

セットアップ完了後、**~/.vim_runtime/my_configs.vim** を作成し、vim 設定をここに記入し保存することで
独自の設定をすることができます。

たとえば、amix/vimrc の作者は以下のようにしているそうです。

	~/.vim_runtime (master)> cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

プラグインをインストールしたい場合は、**~/.vim_runtime/sources_non_forked** に git clone することで
pathogen プラグインが自動的に読み込みます。

たとえば、[vim-rails](https://github.com/tpope/vim-rails) をインストールしたい場合は、以下のようにします。

	cd ~/.vim_runtime
	git clone git://github.com/tpope/vim-rails.git sources_non_forked/vim-rails


## キーマッピング

以下キーマッピングの設定にある [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) は `,` で設定されています。

したがって `<leader>` は `,` と読み替えて入力してください。
たとえば `<leader>o` とは、`,o` と入力する、ということです。

また、`c-` は ctrl ボタンを意味します。`<c-a>` のような記述の場合、ctrl ボタンを押しながら a を押す、
という意味です。

| 表記              | キー                          |
|-------------------|-------------------------------|
|`<leader>`         | `,`                           |
|`<space>`          | スペースキー                  |
|`<cr>`             | エンターキー                  |
|`<c-`              | ctrl キー                     |

### ノーマルモード

| キー              | 操作                                                                                      |
|-------------------|-------------------------------------------------------------------------------------------|
|`<leader>w`        | w! したのと同じ。強制保存。                                                               |
|`<space>`          | / したのと同じ。開いているファイルの文字列検索を行う。                                    |
|`<c-space>`        | ? したのと同じ。開いているファイルを下から上に文字列検索を行う。                          |
|`<leader><cr>`     | :noh したのと同じ。検索文字列のハイライト表示を消す。                                     |
|`<c-j>`            | 分割ウィンドウが開いている状態で、下の分割ウィンドウにカーソル移動する                    |
|`<c-k>`            | 分割ウィンドウが開いている状態で、上の分割ウィンドウにカーソル移動する                    |
|`<c-h>`            | 分割ウィンドウが開いている状態で、右の分割ウィンドウにカーソル移動する                    |
|`<c-l>`            | 分割ウィンドウが開いている状態で、左の分割ウィンドウにカーソル移動する                    |
|`<leader>bd`       | 現在開いているバッファを閉じる                                                            |
|`<leader>ba`       | すべてのバッファを閉じる                                                                  |
|`<leader>tn`       | :tabnew と同じ。タブを新しく開く。                                                        |
|`<leader>to`       | :tabonly と同じ。現在のタブ以外を閉じる。                                                 |
|`<leader>tc`       | :tabclose と同じ。現在のタブを閉じる。                                                    |
|`<leader>tm`       | :tabmove と同じ。タブ位置を移動する。`<leader>tm 0` で、現在のタブを一番左に移動する。    |
|`<leader>te`       | ※TODO - Opens a new tab with the current buffer's path. Super useful when editing files in the same directory. |
|`<leader>cd`       | カレントディレクトリを移動する。[CWD](http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file) |
|`<leader>q`        | 走り書き用のバッファを開く                                                                |
|`<leader>pp`       | ペーストモード、通常モードの切り替えを行う。<br>通常モードで貼り付けすると勝手にインデントしたりしてうまく貼りつけできないが、ペーストモードにするとうまくいく。|
|`<leader>j`        | カーソル下にある関数、メソッドの定義元にジャンプ（別ウィンドウ）する。複数ある場合は選択ウィンドウを表示する。<br> この機能を使うためにはタグファイルを作成する必要がある。以下注１参照。|
|`<leader>jb`       | タグジャンプしたあと、元の位置に戻る。                                                    |
|`<leader>eu`       | 開いているファイルを utf-8 で開きなおす。                                                 |
|`<leader>ec`       | 開いているファイルを cp932(windows sjis) で開きなおす。                                   |

**注１** : タグ機能を使うには、`ctags`がインストールされている必要があります。

    yum install ctags

そのうえで、以下のようなコマンドラインでタグファイルを作成します。
私は、これらを crontab にて５分ごとに実行するようにしています。
（ファイルの保存時にこれを実行する方法もあるようですが、私はしていません）

    (phpの場合)
    /usr/bin/ctags --languages=php --append=yes --recurse=yes --php-kinds=cfd  -f ~/.vim_runtime/data/tags/php.tags {{プロジェクトディレクトリ}}

    (javascriptの場合)
    /usr/bin/ctags --languages=javascript --append=yes --recurse=yes --exclude=*.min.js --regex-javascript="/^[ \t]*([\'\"]?)([A-Za-z0-9_.]+)\1[ \t]*[:=][ \t]*function[ \t]*\(/\2/I,inner/i" -f ~/.vim_runtime/data/tags/javascript.tags {{プロジェクトディレクトリ}}


### Visual mode mappings

Visual mode pressing `*` or `#` searches for the current selection:

	vnoremap <silent> * :call VisualSelection('f')<CR>
	vnoremap <silent> # :call VisualSelection('b')<CR>

When you press gv you `Ack.vim` after the selected text:

	vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

When you press `<leader>r` you can search and replace the selected text:

	vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>


### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:

    inoremap $1 ()<esc>i
    inoremap $2 []<esc>i
    inoremap $3 {}<esc>i
    inoremap $4 {<esc>o}<esc>O
    inoremap $5 ''<esc>i
    inoremap $6 ""<esc>i
    inoremap $7 <><esc>i

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line:

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>

Write the file as sudo (works only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 


### Spell checking
Pressing `<leader>ss` will toggle spell checking:

    map <leader>ss :setlocal spell!<cr>

Shortcuts using `<leader>` instead of special characters:

    map <leader>sn ]s
    map <leader>sp [s
    map <leader>sa zg
    map <leader>s? z=


### Cope
Query `:help cope` if you are unsure what cope is. It's super useful!

When you search with `Ack.vim`, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Cope mappings:

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>



### Plugin related mappings
	
| キー              | プラグイン     | 操作                                                                                     |
| <leader>a         | [ack.vim](https://github.com/mileszs/ack.vim) | `:vimgrep *keyword* \*\*/\*.php | cw` 的なファイル横断検索の高速化＆簡易化処理。`<leader>a *keyword*` でほとんど同様のことが可能。ただし注１参照。|
| <leader>o         | [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) | 現在のバッファを参照できる。              |
| <leader>f         | [MRU.vim](https://github.com/vim-scripts/mru.vim) | 最近開いたファイルの一覧を参照できる。                |
| <leader>cp<br><c-p> | [ctrlp.vim](https://github.com/kien/ctrlp.vim) | カレントディレクトリ配下にあるファイルをインクリメンタルサーチして開くことができる。|
| <leader>cb        | [ctrlp.vim](https://github.com/kien/ctrlp.vim) | TODO :CtrlPBuffer                                        |
| <leader>cd        | [ctrlp.vim](https://github.com/kien/ctrlp.vim) | TODO :CtrlPDir                                           |
| <leader>nn        | [NERD Tree](https://github.com/scrooloose/nerdtree) | vim でツリー表示するための NERDTree をウィンドウ左に表示したり非表示にしたりする。注２参照。|
| <leader>nb        | [NERD Tree](https://github.com/scrooloose/nerdtree) | TODO :NERDTreeFromBookmark                          |
| <leader>nf        | [NERD Tree](https://github.com/scrooloose/nerdtree) | TODO :NERDTreeFind                                  |


[goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2) lets you only focus on one thing at a time. It removes all the distractions and centers the content. It has a special look when editing Markdown, reStructuredText and textfiles. It only has one mapping. (`<leader>z`)

    map <leader>z :Goyo<cr>

[git gutter] show diff inline

    nnoremap <silent> <leader>d :GitGutterToggle<cr>
    nnoremap <silent> <leader>dj <Plug>GitGutterNextHunk
    nnoremap <silent> <leader>dk <Plug>GitGutterPrevHunk

[fugitive] git 

    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>

[php_cs_fixer] format php

    nnoremap <silent><leader>pfd :call PhpCsFixerFixDirectory()<CR>
    nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

[vim-ref] show php manual

    nmap <silent>K <Plug>(ref-keyword)

[taglist.vim] show taglist

    nnoremap <leader>t :<C-u>Tlist<CR>

[neocomplcache] complication

    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


**注１**
Ack を使うために、環境によっては以下のようにして ag(the_silver_searcher)のインストールが必要かもしれません。

    (CentOS6)
    $ sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
    $ sudo yum install the_silver_searcher --enablerepo=epel

**注２**
NERDTree では以下のコマンドで、ファイル、ディレクトリに対して様々な操作をすることができます。

| コマンド  | 操作                                                                          |
| o<br><enter> | カーソル下のファイルまたはディレクトリを開く                               |
| t         | カーソル下のタブで開きそちらを表示する。                                      |
| T         | カーソル下のタブで開くが、そちらは表示せず現在のタブにとどまる。              |
| P         | ルートディレクトリの位置へカーソル移動する。                                  |
| p         | 親ディレクトリの位置へカーソル移動する。                                      |
| j         | ひとつ下へカーソル移動する                                                    |
| k         | ひとつ上へカーソル移動する                                                    |
| u         | 親ディレクトリでツリーを開きなおす                                            |
| R         | ディレクトリを再描画する（別タブでファイルを追加したときなどに使う）          |
| m         | カーソル下のファイルまたはディレクトリを操作するメニューを表示する。リネーム、移動、削除、またはディレクトリに新規ファイルやディレクトリの追加を行いたい場合に使う。|
| I         | 通常、隠しファイル（.で始まるファイルなど）はツリーに表示されないが、これを表示したり非表示にしたりする |
| B         | ブックマークの一覧をツリー上に表示する                                        |
| :Bookmark | カーソル下のファイルをブックマークに登録する                                  |
| :ClearBookmarks | カーソル下のファイルをブックマークから解除する                          |


## アンインストール方法

以下の２つを行えばアンインストールの完了です。

* `~/.vim_runtime` ディレクトリの削除
* `~/.vimrc` に含まれる `.vim_runtime` への参照の削除


