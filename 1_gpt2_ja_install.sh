# 環境構築時のみ実行
source venv/bin/activate
git clone https://github.com/tanreinama/gpt2-japanese
cd gpt2-japanese
pip uninstall tensorflow -y
pip install -r requirements.txt