source venv/bin/activate
cd gpt2-japanese
python ./Japanese-BPEEncoder/encode_bpe.py --src_dir text_data --dst_file finetune-dogura
python run_finetune.py --base_model gpt2ja-medium --dataset finetune-dogura.npz --run_name gpt2ja-finetune-dogura-medium --epoch 4000
cd ..
