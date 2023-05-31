
python examples/pytorch/token-classification/run_ner.py \
  --model_name_or_path dslim/bert-large-NER \
  --dataset_name conll2003 \
  --do_train \
  --do_eval \
  --per_device_train_batch_size 128 \
  --overwrite_output_dir \
  --output_dir /tmp/$TASK_NAME/ 2>&1 | tee log_token_classification/dslim-bert-large-NER_MAF-bs-128.log

 python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_token_classification/dslim-bert-large-NER_MAF-bs-128.log