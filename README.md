# Augmenting Document Representations for Dense Retrieval with Interpolation and Perturbation

Official Code Repository for the paper "Augmenting Document Representations for Dense Retrieval with Interpolation and Perturbation" (ACL 2022)

## Abstract
Dense retrieval models, which aim at retrieving the most relevant document for an input query on a dense representation space, have gained considerable attention for their remarkable success. Yet, dense models require a vast amount of labeled training data for notable performance, whereas it is often challenging to acquire query-document pairs annotated by humans. To tackle this problem, we propose a simple but effective Document Augmentation for dense Retrieval (DAR) framework, which augments the representations of documents with their interpolation and perturbation. We validate the performance of DAR on retrieval tasks with two benchmark datasets, showing that the proposed DAR significantly outperforms relevant baselines on the dense retrieval of both the labeled and unlabeled documents.

## Installation
We refer to the repository of [DPR](https://github.com/facebookresearch/DPR) as a skeleton code. Note that we mainly modified [here](https://github.com/starsuzi/DAR/blob/main/dar/models/biencoder.py#L413-L491) and [here](https://github.com/starsuzi/DAR/blob/7bae1ee97f1b5940ca3089bbebcd8fd8cdd72021/train_dense_encoder.py#L768-L821) for interpolation and perturbation, respectively.

```bash
conda create -n dar python=3.7
conda activate dar
conda install pytorch cudatoolkit=11.1 -c pytorch
cd DAR
pip install -r requirements.txt
```
If this error shows up,
```bash
OSError: [E050] Can't find model 'en_core_web_sm'. It doesn't seem to be a Python package or a valid path to a data directory.
```
then execute command as follows:
```bash
python -m spacy download en
```
## Run

### 1. Train dense retriever

We use a single GeForce RTX 3090 GPU having 24GB memory.

```bash
sh 0_train_retriever.sh
```
### 2. Generate dense embeddings

This step for generating dense embeddings may require a parallelizable process.

```bash
sh 1_gen_emb.sh
```
### 3. Retrieve
```bash
sh 2_dense_retrieve.sh
```
### 4. Read (Optional)
This is an extractive QA setting without re-training a reader model.
```bash
sh 3_read.sh
```

