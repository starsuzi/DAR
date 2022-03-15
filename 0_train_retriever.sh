CUDA_VISIBLE_DEVICES=0 \
python train_dense_encoder.py \
train_datasets=[nq_train] \
dev_datasets=[nq_dev] \
train=biencoder_local \
output_dir='nq_dar'