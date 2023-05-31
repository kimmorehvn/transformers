export TASK_NAME=mrpc

python examples/pytorch/token-classification/run_ner.py \
  --model_name_or_path StanfordAIMI/stanford-deidentifier-base \
  --dataset_name conll2003\
  --task_name $TASK_NAME \
  --do_train \
  --max_seq_length 128 \
  --per_device_train_batch_size 192 \
  --learning_rate 2e-5 \
  --num_train_epochs 5 \
  --overwrite_output_dir \
  --ignore_mismatched_sizes=True \
  --output_dir /tmp/$TASK_NAME/ 2>&1 | tee log_token_classification/StanfordAIMI-stanford-deidentifier-base-MAF-bs-192.log

python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_token_classification/StanfordAIMI-stanford-deidentifier-base-MAF-bs-192.log

#  https://moreh-vietnam.s3.ap-northeast-2.amazonaws.com/kimng/hf/StanfordAIMI-stanford-deidentifier-base-MAF-bs-192.log.txt

python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_question_answering/deepset-minilm-uncased-squad2-MAF-bs-64.log
 # https://moreh-vietnam.s3.ap-northeast-2.amazonaws.com/kimng/hf/deepset-minilm-uncased-squad2-MAF-bs-64.log.txt
 python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_question_answering/deepset-minilm-uncased-squad2-A100-bs-64.log
