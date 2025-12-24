# create text by gpt2

AIによる文章作成に関するリポジトリ
GPU個人環境を手放したことと、GPT2はとっくに時代遅れのため、放棄


## 仮想環境

### 作成

`$ python -m venv venv`

### アクティベート

`$ source venv/bin/activate`

## jupyter lab起動

`jupyter lab`

### jupyterにカーネル登録

```
pip install ipykernel
ipython kernel install --user --name=gptj
```

## インストールしたライブラリメモ

```
$ sudo apt install zstd
$ time wget -c https://the-eye.eu/public/AI/GPT-J-6B/step_383500_slim.tar.zstd
$ time tar -I zstd -xf step_383500_slim.tar.zstd
$ git clone https://github.com/kingoflolz/mesh-transformer-jax.git
$ pip install -r mesh-transformer-jax/requirements.txt
$ pip install mesh-transformer-jax/ jax==0.2.12 tensorflow==2.5.0
```

## gpt2-japanese変更点
run_finetune.py
`parser.add_argument('--gpu', default='0', help='visible gpu number.')`
の下に、
`parser.add_argument('--epoch', metavar='epoch', type=int, default=100, help='epoch num')`
を追加。
`if counter % args.save_every == 0:`の上の、`while True:`を削除し、その行に、

`for i in range(args.epoch):`を追加。

