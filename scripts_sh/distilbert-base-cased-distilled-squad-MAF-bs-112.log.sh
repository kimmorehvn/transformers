
python examples/pytorch/question-answering/run_qa.py \
  --model_name_or_path distilbert-base-cased-distilled-squad \
  --dataset_name squad\
  --do_train \
  --do_eval \
  --max_seq_length 384 \
  --per_device_train_batch_size 112 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --overwrite_output_dir \
  --output_dir /tmp/debug_squad/ 2>&1 | tee log_question_answering/distilbert-base-cased-distilled-squad-MAF-bs-112.log

python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_question_answering/distilbert-base-cased-distilled-squad-MAF-bs-112.log
# -> https://moreh-vietnam.s3.ap-northeast-2.amazonaws.com/kimng/hf/distilbert-base-cased-distilled-squad-MAF-bs-112.log.txt