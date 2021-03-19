# docker-postgres-backup

This container wil make a backup of your Postgres database.
Note that this does not contain cron. 
You could use Kubernetes Cronjob for this.


## Example in docker

```bash
docker run \
    -e DB_NAME=mydb \
    -e DB_USERNAME=root \
    -e DB_PASSWORD="" \
    -e DB_HOST=127.0.0.1 \
    -e DB_PORT=3306 \
    -e AWS_REGION=eu-west-1 \
    -e AWS_ACCESS_KEY_ID=SOMETHING \
    -e AWS_SECRET_ACCESS_KEY_ID=SOMETHING_ELSE \
    -e AWS_S3_BUCKET=mybucket \
    -e AWS_S3_PATH=customerx \
    kabisa/docker-postgres-backup:0.1 postgres_backup
```