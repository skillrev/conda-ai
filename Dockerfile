FROM quay.io/jupyter/minimal-notebook:python-3.12

WORKDIR /home/jovyan/conda-ai
COPY environment.yml environment.yml
RUN conda env create -f environment.yml && \
  conda env list && \
  conda activate conda-ai

EXPOSE 8888

CMD jupyter lab
