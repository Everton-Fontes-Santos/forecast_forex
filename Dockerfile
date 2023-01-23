FROM tensorflow/serving

COPY ./models/ /models/

COPY ./config.conf /config/config.conf

ENV MODEL_CONFIG_FILE=/config/config.conf

ENV MODEL_BASE_PATH=/models/saved_model
ENV MODEL_NAME=saved_model