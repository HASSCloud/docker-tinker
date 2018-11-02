FROM jupyter/scipy-notebook

# Install from requirements.txt file
COPY requirements.txt /tmp/
RUN pip install --upgrade pip && \
    pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
