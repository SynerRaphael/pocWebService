#pull latest Python image
FROM python:latest

RUN mkdir /test

#install dependencies and libraries
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

#change our workdir to facturx
WORKDIR /test

#copy gunicorn apps and entrypoint

# COPY app.py /test/
#go to app forlder

RUN cd /test

#Expose custom port
# EXPOSE 5000

#Run the webservice and listen in all interfaces using gunicorn

# CMD gunicorn --bind 0.0.0.0:5000 'app'

# CMD ["tail", "-f", "/dev/null"] facile pour tester 
CMD ["python","/test/app.py"] 
