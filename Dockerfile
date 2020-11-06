FROM ruby:2.7
RUN apt update && apt install -y mariadb-client
RUN gem install backup -v 5.0.0.beta.3
ENV PATH "/root/.local/bin:${PATH}"
COPY . /root/Backup/
ENTRYPOINT ["backup", "perform", "--trigger"]

# docker build -t kabisa/docker-mysql-backup:0.1 .
# docker push kabisa/docker-mysql-backup:0.1