
python examples/pytorch/question-answering/run_qa.py \
  --model_name_or_path deepset/roberta-base-squad2-covid \
  --dataset_name squad \
  --do_train \
  --do_eval \
  --max_seq_length 384 \
  --learning_rate 3e-5 \
  --doc_stride 128 \
  --num_train_epochs 2 \
  --overwrite_output_dir \
  --per_device_eval_batch_size=64 \``
  --per_device_train_batch_size=64 \
  --output_dir ./examples/models/wwm_uncased_finetuned_squad/ 2>&1 | tee log_question_answering/deepset-roberta-base-squad2-covid-MAF-bs-64.log

python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_question_answering/deepset-roberta-base-squad2-covid-MAF-bs-64.log
# https://moreh-vietnam.s3.ap-northeast-2.amazonaws.com/kimng/hf/deepset-roberta-base-squad2-covid-MAF-bs-64.log.txt