FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENSE_KEY="123-456-789-012"
LABEL MAINTAINER SR@devops.com
#RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo $LICENSE_KEY
WORKDIR /code
#ENTRYPOINT ["sh","Sample.sh"]
#CMD ["testfile"]
CMD sh Sample.sh testfile
