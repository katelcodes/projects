# Base image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /webapp

# Copy the web application files to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the web application port
EXPOSE 5000

# Set the command to start the web application
CMD ["python", "helloworld.py"]

