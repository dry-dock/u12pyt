FROM drydock/u12:prod

ADD . /u12pyt

RUN /u12pyt/install.sh
