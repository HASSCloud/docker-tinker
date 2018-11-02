# docker-tinker

Docker image to run Jupyter Notebooks on the Tinker workbench.  Based on jupyter/scipy-notebook this 
adds modules for text processing and geolocation.  

Run it with, e.g.:
```
docker run -it --rm -v `pwd`:/home/jovyan/ -p 8888:8888 stevecassidy/tinker-python
```
This will mount your current working directory as the working directory for the notebooks 
and start the notebook server on http://localhost:8888/ 