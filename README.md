# comp5331_metricprompt
We conducted experiments on three text classification datasets: AG's News, DBPedia, and Yahoo Answers Topics. To obtain the full datasets, please run the following commands:
```
cd ./data
bash download_text_classification.sh
```

Environment:
Our implementation requires the installation of the `pytorch`, `transformers`, and `pathos` packages. The specific packages used in this project are listed in `requirements.txt`. To set up a compatible environment, you can use the following commands:

```
conda create -n metricprompt python=3.9
conda activate metricprompt
pip install -r requirements.txt
```

If your GPU is based on the Ampere architecture, you can install the `kernl` package to accelerate the inference process using the following command:

```
pip install 'git+https://github.com/ELS-RD/kernl'
```

After installing `kernl`, you can activate the acceleration by setting `--kernl_accerleration 1` in the `scripts/metricprompt.sh` file.

Quickstart:
You can run MetricPrompt simply by executing `scripts/metricprompt.sh`. The following command runs MetricPrompt for the 2-shot setting on AG's News dataset with 120 training epochs:

```
cd ./scripts
bash metricprompt.sh agnews 2 120
```

Code:
- `main.py` is the entry point for MetricPrompt's training and testing procedures.
- `model.py` contains the model definition, as well as the implementation of the optimization and inference processes.
- `dataloader.py` contains the code for data processing.

