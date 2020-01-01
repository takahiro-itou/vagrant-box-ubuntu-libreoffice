# vagrant-box-ubuntu-gui

デスクトップパッケージをインストールした Ubuntu 18.04 (bionic) 64 bit

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-ubuntu-gui.git
cd  vagrant-box-ubuntu-gui
```
### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  --name <yourname>/ubuntu-bionic64-gui  ubuntu-gui.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/ubuntu-bionic64-gui
- https://app.vagrantup.com/takahiro-itou/boxes/ubuntu-bionic64-gui

