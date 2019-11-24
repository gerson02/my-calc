FROM ubuntu:16.04 

RUN su - 

RUN apt-get install sudo -y

# Update packages
RUN sudo apt-get update -y

# Install Python Setuptools
RUN sudo apt-get install python-setuptools git telnet curl

# Install pip
RUN sudo easy_install pip

# Bundle app source
ADD . /src
WORKDIR /src

# Add and install Python modules
RUN sudo pip install Flask

# Expose
EXPOSE 5000

# Run
CMD ["python", "entry.py"]
