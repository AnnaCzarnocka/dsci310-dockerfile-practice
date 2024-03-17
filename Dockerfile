# Start with the r-notebook base image from Jupyter
FROM quay.io/jupyter/r-notebook:2023-11-19

# Install specific versions of Python, Altair, and Pandas packages using conda
# and clean up the conda cache to keep the image size minimal
RUN conda install -y 
    python=3.11.6 \ 
    altair=5.1.2 \ 
    pandas=2.1.2 && \
    conda clean --all -f -y
