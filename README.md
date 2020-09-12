[ja](./README.ja.md)

# Shell.LastNameTsv.20200911141000

Create a Japanese surname database in TSV format.

# Deliverables

File|lines|Description
----|-----|-----------
[uniq_yk.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/uniq_yk.tsv)|47594|"Reading" and "notation" are one-to-one.
[union_yk.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/union_yk.tsv)|29318|"Reading" and "notation" are one-to-many.
[union_ky.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/union_ky.tsv)|6388|"Notation" and "reading" are one-to-many.

# Original data

File|lines|Description
----|-----|-----------
[surnames.tsv](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/tsv/surnames.tsv)|47622|"Reading" and "notation" are one-to-one. There are duplicate records probably because I copied and pasted them by hand.

# Requirement

* <time datetime="2020-09-11T14:09:50+0900">2020-09-11</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/Shell.LastNameTsv.20200911141000
```

# Usage

```sh
cd Shell.LastNameTsv.20200911141000/src
./00/uniq_yk.sh
./01/union_yk.sh
./02/union_ky.sh
```

# Note

It takes a long time to execute.

Script|Time required
------|-------------
[union_yk.sh](https://github.com/ytyaru/Shell.LastNameTsv.20200911141000/blob/master/src/01/union_yk.sh)|[46 minutes](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/src/01/note.md)
[union_ky.sh](https://github.com/ytyaru/Shell.LastNameTsv.20200911141000/blob/master/src/02/union_ky.sh)|[12 minutes](https://raw.githubusercontent.com/ytyaru/Shell.LastNameTsv.20200911141000/master/src/02/note.md)

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

