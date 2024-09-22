# AutoAWQ

This is a simple wrapper around the original [AutoAWQ](https://github.com/casper-hansen/AutoAWQ/blob/v0.2.5/examples/quantize.py) quantization python code made to be run as a standalone script.

## Usage

It takes a single argument: the model. The argument can be a Hugging Face ID (relative path) or a local directory (full path). Model name will be extracted from that path and suffixed with `-awq` for the output folder. Output will target the working directory by default, but you can specify an output folder as well using the `AUTOAWQ_OUTPUTDIR` environment variable.

Note that, like the original code, AutoAWQ must be installed:

```bash
docker build . -t autoawq
```

### Example

```bash
# Quantize a model from Hugging Face Hub
# Output folder will be "Llama3-ChatQA-1.5-8B-awq" in the current working directoy
docker run --rm -v ./output:/data/output autoawq 'nvidia/Llama3-ChatQA-1.5-8B'
```
