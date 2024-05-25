from transformers import AutoModel
from transformers import AutoTokenizer
import torch

checkpoint = "meta-llama/Meta-Llama-3-8B"

tokenizer = AutoTokenizer.from_pretrained(checkpoint)
model = AutoModel.from_pretrained(checkpoint, torch_dtype=torch.float16)

raw_inputs = [
    "The quick brown fox jumped over the log.",
    "This is about 75% effort level."
]

inputs = tokenizer(raw_inputs, return_tensors='pt')
print(inputs)

tokens = tokenizer.tokenize(raw_inputs)

tokenizer.convert_tokens_to_ids(tokens)


