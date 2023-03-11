# vagrant-box-ubuntu-libreoffice

デスクトップパッケージと Libre Office の開発環境を
インストールした Ubuntu 20.04 (focal) 64 bit

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-ubuntu-libreoffice.git
cd  vagrant-box-ubuntu-libreoffice
```
### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  \
    --name <yourname>/ubuntu-bionic64-libreoffice  \
    ubuntu-focal64-libreoffice.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/ubuntu-focal64-libreoffice
- https://app.vagrantup.com/takahiro-itou/boxes/ubuntu-focal64-libreoffice

