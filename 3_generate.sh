source venv/bin/activate
cd gpt2-japanese
python gpt2-generate.py --model checkpoint/gpt2ja-finetune-dogura-medium --num_generate 1
cd ..
