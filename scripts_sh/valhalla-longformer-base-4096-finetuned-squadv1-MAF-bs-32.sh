
python examples/pytorch/question-answering/run_qa.py \
  --model_name_or_path valhalla/longformer-base-4096-finetuned-squadv1 \
  --dataset_name squad\
  --do_train \
  --do_eval \
  --max_seq_length 384 \
  --learning_rate 3e-5 \
  --doc_stride 128 \
  --num_train_epochs 3 \
  --overwrite_output_dir \
  --per_device_eval_batch_size=32 \
  --per_device_train_batch_size=32 \
  --output_dir ./examples/models/wwm_uncased_finetuned_squad/ 2>&1 | tee log_question_answering/valhalla-longformer-base-4096-finetuned-squadv1-MAF-bs-32.log
python /nas/kimng/repos/uploads3.py --folder kimng/hf /nas/kimng/repos/transformers/log_question_answering/valhalla-longformer-base-4096-finetuned-squadv1-MAF-bs-32.log
