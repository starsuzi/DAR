CUDA_VISIBLE_DEVICES=0,1,2,3 python dense_retriever.py \
	model_file='path/to/model/nq_dar/dpr_biencoder.24' \
	qa_dataset=nq_test \
	ctx_datatsets=[dpr_wiki] \
	encoded_ctx_files=['path/to/generated_embeddings/nq_dar_*'] \
	out_file='nq_dar_retrieved'
