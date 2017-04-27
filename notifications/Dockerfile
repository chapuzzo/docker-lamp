FROM ruby:2.3.3-alpine

RUN mkdir /app
WORKDIR /app

RUN apk add --no-cache build-base ruby-dev
RUN adduser -s /bin/sh -D -u 1000 user

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 4

ADD . /app

ENV RACK_ENV development
#CMD ["echo", "$RACK_ENV"]
#CMD ["echo", "\$RACK_ENV"]
#ENTRYPOINT ["sh", "-c" ]
#CMD ["sh", "-c 'bundle exec shotgun -p 3000 -o 0.0.0.0'"]
ENTRYPOINT ["bundle", "exec", "rackup", "-p", "3000", "-o", "0.0.0.0"]
