# Use the official Python image from the Docker Hub
FROM python:3.12-slim
# Install build tools and clean up
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app
# Upgrade pip and setuptools
RUN pip install --no-cache-dir --upgrade pip setuptools

# Copy the requirements file into the container
COPY . /app
COPY requirements.txt .

# Install the dependencies

# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install click
RUN pip install cycler
RUN pip install Flask
RUN pip install fonttools
RUN pip install gunicorn
RUN pip install itsdangerous
RUN pip install Jinja2
RUN pip install joblib
RUN pip install kiwisolver
RUN pip install MarkupSafe
RUN pip install matplotlib
RUN pip install packaging
RUN pip install pandas
RUN pip install Pillow
RUN pip install pyparsing
RUN pip install python-dateutil
RUN pip install six
RUN pip install threadpoolctl
RUN pip install Werkzeug
RUN pip install numpy
RUN pip install scikit-learn
RUN pip install pytz
RUN pip install scipy
#RUN pip install sklearn


EXPOSE 5000

ENV NAME myenv

# Specify the command to run your application
CMD ["python", "app.py"] 
