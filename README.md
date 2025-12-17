# m1sk9/user.js

Forked from [arkenfox/user.js](https://github.com/arkenfox/user.js).

arkenfox/user.js の設定をベースに自分用にカスタマイズした Firefox 用の user.js ．

## 使用方法

- `deploy.fish` を実行すると自動でプロファイルに user.js が展開されます．
  - 実行時に自動的に user-overides.js の内容も結合されるようになっています．
- エディション名は `nightly`, `dev`, `release` のいずれかを指定します．
  - 指定しなかった場合は `nightly` エディションに展開されます．
  
```sh
./deploy.fish [エディション名]
```
