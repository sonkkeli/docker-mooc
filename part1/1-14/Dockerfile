FROM ruby:2.6.0

# install bundler, curl and nodeJS
RUN gem install bundler
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

# set workdir and env variables
WORKDIR /app
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
ENV SECRET_KEY_BASE="sonjaOnSecret"

# install the project dependencies, migrate and precompile
COPY . .
RUN npm install -y yarn -g
RUN bundle install
RUN rails db:migrate
RUN rake assets:precompile

EXPOSE 3000
CMD ["rails","s","-e","production"]

# To build and run the image (inside this directory):
# docker build -t sonja/rails .
# docker run -p 3000:3000 sonja/rails