FROM ruby:2.7
RUN apt update && apt install -y postgresql-client
RUN gem install backup -v 5.0.0.beta.3
ENV PATH "/root/.local/bin:${PATH}"
COPY . /root/Backup/
ENTRYPOINT ["backup", "perform", "--trigger", "postgresql_backup"]

# docker build -t kabisa/docker-postgres-backup:0.1 .
# docker push kabisa/docker-postgres-backup:0.1