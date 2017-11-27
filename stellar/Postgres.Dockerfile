FROM postgres

COPY ./wait-postgres.sh /bin/wait-postgres.sh

CMD "sudo -u postgres postgres"