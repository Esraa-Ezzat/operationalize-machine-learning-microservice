FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /home/udacity/project
## Step 2:
# Copy source code to working directory
COPY . /home/udacity/project
COPY model_data /home/udacity/project/model_data

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip && \
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.:wqpy at container launch
CMD ["python", "app.py"]
