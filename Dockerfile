FROM ruby:2.7
RUN gem install backup -v 5.0.0.beta.3
ENV PATH "/root/.local/bin:${PATH}"
COPY . .
CMD ["backup", "perform"]

# docker build -t kabisa/docker-mysql-backup .
# docker push kabisa/docker-mysql-backup