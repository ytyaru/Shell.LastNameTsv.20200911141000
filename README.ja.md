[en](./README.md)

# Shell.LastNameTsv.20200911141000

　日本人の名字データベースをTSV形式で作成する。

# 成果物

ファイル|行数|説明
--------|----|----
[uniq_yk.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/uniq_yk.tsv)|47594|「読み」と「表記」が1対1である。
[union_yk.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/union_yk.tsv)|29318|「読み」と「表記」が1対多である。
[union_ky.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/union_ky.tsv)|6388|「表記」と「読み」が1対多である。「読み」が2つ以上ある「表記」のみ対象。

# 元データ

ファイル|行数|説明
--------|----|----
[surnames.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/surnames.tsv)|47622|「読み」と「表記」が1対1である。手作業でコピペし作成したせいか重複レコードがある。

# 開発環境

* <time datetime="2020-09-11T14:09:50+0900">2020-09-11</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# インストール

```sh
git clone https://github.com/ytyaru/Shell.LastNameTsv.20200911141000
```

# 使い方

```sh
cd Shell.LastNameTsv.20200911141000/src
./00/uniq_yk.sh
./01/union_yk.sh
./02/union_ky.sh
```

# 注意

　実行に時間がかかってしまう。

スクリプト|所要時間
----------|--------
[union_yk.sh](https://github.com/ytyaru/Shell.LastNameTsv.20200911141000/blob/master/src/01/union_yk.sh)|[46分](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/src/01/note.md)
[union_ky.sh](https://github.com/ytyaru/Shell.LastNameTsv.20200911141000/blob/master/src/02/union_ky.sh)|[12分](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/src/02/note.md)

# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

