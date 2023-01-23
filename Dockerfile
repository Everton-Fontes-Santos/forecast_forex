FROM tensorflow/serving

COPY ./models/ /models/

COPY ./models.config /models/models.config

ENV MODEL_CONFIG_FILE=/models/models.config

ENV MODEL_BASE_PATH=/models/
ENV MODEL_NAME=saved_model