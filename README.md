# Neural Art Transfer Using Neural Networks
A easy tutorial to generate images like a real artist. This repository is a tutorial to neural art transfer using neural networks. In general, the texture of a given style image is extracted and applied onto a content image.

![Example for art transfer](material/exampleImage.png)

Theory based on following papers:
- [A Neural Algorithm of Artistic Style](https://arxiv.org/abs/1508.06576)
- [Semantic Style Transfer and Turning Two-Bit Doodles into Fine Artworks](https://arxiv.org/abs/1603.01768)

Not only real artistic styles can be transfered, but also characteristics of faces. The possibilities are endless.

## Overview
- [neural_transfer](neural_transfer.ipynb)
Simple cnn for combining style and content image.
- [neural_transfer_using_image_segmentation](/neural_transfer_using_image_segmentation)
Advanced approach, where segmentation maps are used in order to define classes.
- [/neural_transfer_using_image_segmentation/transfer.py](transfer.py) 
A fast tensorflow implementation based on [gargimahale/Doodle](https://github.com/gargimahale/Doodle/blob/master/stylize.py) which implements Neural Doodles.
- [/input](/input) Some example style and content images are provided in the directory input.
- [/output](/output) This directory saves all generated images.

## Usage
This repository is deployed with docker. But the jupyterlab requires a python kernel. Therefore simply startup the container and mount the python venv to our IDE and the jupyter notebook.
Simply execute the following lines:

```
docker build -t neural_transfer .
```
Now we need to start our builded docker container:

```
docker compose up -d
```

To shut down the container:

```
docker compose down
```

And connect the running container to your IDE.

### Without Docker
If you don't have Docker and Docker Desktop available, please create a python virtual environment, see [Python env](https://docs.python.org/3/library/venv.html). Or you can use [Poetry](https://python-poetry.org/). 
#### Poetry
```peotry install```

##### Pip
```python -m venv install -r requirements.txt``` 
# Advanced Topics


# References
Inspired by the following githup repos:
- [alexjc/neural-doodle](https://github.com/alexjc/neural-doodle)
- [gargimahale/Doodle](https://github.com/gargimahale/Doodle/blob/master/stylize.py) 