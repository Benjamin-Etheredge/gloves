#FROM python:3.7
# Starting from tf docker image is the easiest way to get tf >2.1 and gpu libraries
FROM tensorflow/tensorflow:nightly-gpu

# for now, I just want the latest images
#COPY requirements.txt params.yaml /app/
#RUN pip install -r /app/requirements.txt
RUN pip install siamese==0.0.22 mlflow wandb click tensorflow_addons boto3 icecream
COPY gloves /app
WORKDIR /app
ENTRYPOINT ["python", "main.py"]