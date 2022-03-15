CUDA_VISIBLE_DEVICES=0 python train_extractive_reader.py \
  prediction_results_file='nq_dar_reader' \
  eval_top_docs=[20,100] \
  dev_files='path/to/retrieved/nq_dar_retrieved' \
  model_file='path/to/model/nq_dar/dpr_biencoder.24' \
  train.dev_batch_size=20 \
  passages_per_question_predict=100 \
  encoder.sequence_length=350