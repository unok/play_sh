wrapper for play shell
======================

Play Framework のプロジェクトが増えてくると play のバージョンも増えてきます。
実行する play コマンドを覚えているのが面倒なので、プロジェクトホームに .play_version というファイルを配置して
その中にバージョン記入しておくと、そのバージョンの play コマンドを実行する wrapper を書きました。

2014/8/8  Typesafe Activator にも対応してみました。

使い方(activator)
-----------------

activator.sh を activator-1.2.7 というような Typesafe Activator の実態があるディレクトリに
配置し、 パスを通してください。


```sh
% ls /opt/activator_home/
    activator-1.2.3
    activator-1.2.7
% cp activator.sh /opt/activator_home/activator
% chmod a+x /opt/activator_home/activator
% export PATH=/opt/activator_home:$PATH
% cd /foo/bar/project_root
% echo '1.2.3' > .activator_version
% activator run
```

若しくは、activator.sh をパスの通っている場所に配置し、Typesafe Activator の
ディレクトリが置いてある場所を ACTIVATOR_DIR_HOME 環境変数に設定してください。

```sh
% ls /opt/activator_home/
    activator-1.2.3
    activator-1.2.7
% cp activator.sh /usr/bin/activator
% chmod a+x /usr/bin/activator
% export ACTIVATOR_DIR_HOME=/opt/activator_home
% cd /foo/bar/project_root
% echo '1.2.7' > .activator_version
% activator run
```



使い方(play)
----------------

play.sh を play-2.0.4 というような Play Framework の実態があるディレクトリに
配置し、 パスを通してください。


```sh
% ls /opt/play_home/
    play-2.0.3
    play-2.0.4
    play-2.1.0
% cp play.sh /opt/play_home/play
% chmod a+x /opt/play_home/play
% export PATH=/opt/play_home:$PATH
% cd /foo/bar/project_root
% echo '2.0.4' > .play_version
% play run
```

若しくは、play.sh をパスの通っている場所に配置し、Play! Framework の
ディレクトリが置いてある場所を PLAY_DIR_HOME 環境変数に設定してください。

```sh
% ls /opt/play_home/
    play-2.0.3
    play-2.0.4
    play-2.1.0
% cp play.sh /usr/bin/play
% chmod a+x /usr/bin/play
% export PLAY_DIR_HOME=/opt/play_home
% cd /foo/bar/project_root
% echo '2.0.4' > .play_version
% play run
```

ライセンス
----------

Copyright &copy; 2013-2014 Kazuhiko UNO
Distributed under the [MIT License][mit]
[MIT]: http://www.opensource.org/licenses/mit-license.php
