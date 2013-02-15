wrapper for play shell
======================

Play! Framework のプロジェクトが増えてくると play のバージョンも増えてきます。
実行する play コマンドを覚えているのが面倒なので、プロジェクトホームに .play_version というファイルを配置して
その中にバージョン記入しておくと play コマンドを実行する wrapper を書きました。

使い方
------

play.sh を play-2.0.4 というような Play! Framework の実態があるディレクトリに
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

Copyright &copy; 2013 Kazuhiko UNO
Distributed under the [MIT License][mit]
[MIT]: http://www.opensource.org/licenses/mit-license.php
