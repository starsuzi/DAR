# generate document embeddings in parallel
# e.g. num_shards=4 needs 4 parallel processes
CUDA_VISIBLE_DEVICES=0 python generate_dense_embeddings.py model_file='path/to/model/nq_dar/dpr_biencoder.24' ctx_src=dpr_wiki shard_id=0 num_shards=4 out_file='nq_dar'
