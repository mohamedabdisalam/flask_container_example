# Start your image with a node base image
FROM python:3.9
#Base image containing python 3 (to run python programs)

# The /app directory should act as the main application directory
WORKDIR /songs

# Copy the app package and package-lock.json file
COPY app.py .

# Copy local directories to the current local directory of our docker image (/app)


# Install node packages, install serve, build the app, and remove dependencies at the end
RUN pip install flask

EXPOSE 8000

# Start the app using serve command
CMD [ "python", "app.py" ]


#docker run -p 5000:5000 name-of-app


#Install docker
#sudo amazon-linux-extras enable docker sudo yum install docker -y
#sudo docker ps               