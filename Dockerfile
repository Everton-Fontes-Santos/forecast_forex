FROM tensorflow/serving

COPY ./models/ /models/

COPY ./models.config /models/models.config

ENV MODEL_CONFIG_FILE=/models/models.config

EXPOSE 8500
EXPOSE 8501
#ENV MODEL_BASE_PATH=/models/
#ENV MODEL_NAME=saved_model

CMD tensorflow_model_server --rest_api_port=8501 --model_config_file=/models/models.config --allow_version_labels_for_unavailable_models=true