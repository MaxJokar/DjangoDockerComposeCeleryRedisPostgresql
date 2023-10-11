# includes the command lines to assemble the image when 
#  we create a  container 
FROM python:3
# allow us to log messges immidiately 
ENV PYTHONUNBUFFERED=1
# our workin directory in the container 
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt