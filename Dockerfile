FROM quay.io/jupyter/minimal-notebook:python-3.12

WORKDIR /home/jovyan/conda-ai
COPY environment.yml environment.yml
RUN conda env create -f environment.yml

# docker equivalent of "conda activate" command
ENV PATH /opt/conda/envs/conda-ai/bin:$PATH
ENV CONDA_DEFAULT_ENV conda-ai

EXPOSE 8888

CMD ["jupyter", "lab"]
