# Use the AWS Lambda Python base image
FROM public.ecr.aws/lambda/python:3.9

# Set the working directory
WORKDIR /var/task

# Copy the application code
COPY app.py .

# Set the handler function
CMD ["app.handler"]