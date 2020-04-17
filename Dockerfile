FROM python:stretch

# Copy project files into docker image
# and set working directory
COPY . ./app

WORKDIR /app

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "--bind", ":8080", "main:APP"]