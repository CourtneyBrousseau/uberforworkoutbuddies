FROM mhart/alpine-node:8 as node
WORKDIR /app
COPY package.json ./
RUN yarn install --network-timeout 1000000

FROM ruby:2.5.1-alpine3.7
COPY --from=node /usr/bin/node /usr/bin/
COPY --from=node /usr/lib/libgcc* /usr/lib/libstdc* /usr/lib/
WORKDIR /app
COPY --from=node /app .

COPY Gemfile Gemfile.lock ./
RUN apk add --no-cache \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
  tzdata \
  busybox-extras \
  bash \
  postgresql-client \
  curl \
  expect

RUN bundle install
COPY . .

CMD ["./bin/webpack-dev-server"]
