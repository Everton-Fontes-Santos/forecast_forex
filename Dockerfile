FROM tensorflow/serving

COPY ./models/ /models/

COPY ./config.conf /config/config.config

ENV MODEL_CONFIG_FILE=/config/config.config

ENV MODEL_BASE_PATH=/models/saved_model
ENV MODEL_NAME=saved_model