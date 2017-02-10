FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.14.9

RUN gem install fluentd --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fluent-binlog-reader"]
CMD ["--help"]
