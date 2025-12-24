export MODEL=gpt2ja-medium
wget https://www.nama.ne.jp/models/$MODEL.tar.bz2
tar xvfj $MODEL.tar.bz2
mv $MODEL gpt2-japanese/$MODEL
rm -r $MODEL.tar.bz2