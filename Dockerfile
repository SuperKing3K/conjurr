# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Install any dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 2665

# Define environment variables
ENV TAUTULLI_URL=
ENV TAUTULLI_API_KEY=
ENV GOOGLE_API_KEY=

# Run app.py when the container launches
CMD ["python", "app.py"]