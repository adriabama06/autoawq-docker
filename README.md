# AutoAWQ

This is a simple wrapper around the original [AutoAWQ](https://github.com/casper-hansen/AutoAWQ/blob/v0.2.5/examples/quantize.py) quantization python code made to be run as a standalone script.

## Usage

It takes a single argument: the model. The argument can be a Hugging Face ID (relative path) or a local directory (full path). Model name will be extracted from that path and suffixed with `-awq` for the output folder.

```bash
docker build . -t autoawq
```

### Example
### NOTE: On Windows change ./ to .\ -> -v ./output:/output to .\output:/output

```bash
# Quantize a model from Hugging Face Hub
# Output folder will be "Llama3-ChatQA-1.5-8B-awq" in the current working directoy
docker run --gpus all --rm -v ./output:/output autoawq "nvidia/Llama3-ChatQA-1.5-8B"
```
