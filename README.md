# Multi-set loss

### Generate data by:

ipython generate_data.py -- --n=3 --path=training-3.data --size=50000

ipython generate_data.py -- --n=3 --path=validation-3.data --size=10000 --source=validation

ipython generate_data.py -- --n=3 --path=test-3.data --size=10000 --source=test

### Run loss evaluation by:

ipython -m ipdb evaluate.py -- --n=3 --n-units=256 --pretrained-cnn

### TODO

- [] Sequence of 10 digits
- [] Experiment on sequences generated with replacement (especially, the performance of RL-based loss, which appears to be unplausible when length of sequence is 1)
- [] Refactor visualization code
