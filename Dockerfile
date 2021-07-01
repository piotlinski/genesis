FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-devel
USER root
ADD environment.yml environment.yml
COPY forge ${HOME}/forge
RUN conda init bash
RUN conda env update --prefix /opt/conda --file environment.yml --prune
ENV PYTHONPATH="${PYTHONPATH}:${HOME}/forge"
WORKDIR /app
