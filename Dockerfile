# Initialize python environment
FROM jupyter/jupyter/minimal-notebook:python-3.8.8
USER root 


# OS Dependencies
RUN sudo apt-get && apt-get install -y no-install-recommends \
    unix-odbc-dev \
    unix-odbc \ 
    libpq-dev \
    gcc \ 
    build-essential \
    python3-dev


# Setup environment variable s
ENV PYTHONPATH $PYTHONPATH:/watchdog/core/pythonbox

# install python modules 
COPY ./requirements.txt . 
RUN pip install -r requirements.txt 

# Install ODBC drivers 


# Establish working directory 
WORKDIR /watchdog/core/pythonbox 

# Pull secrets(once setup)

# set user for logging purposes 
ARG LOGNAME
ARG USER 
ARG LNAME
ARG USERNAME
ENV LOGNAME ${LOGNAME:-${USER:-${LNAME:-$USERNAME}}}

