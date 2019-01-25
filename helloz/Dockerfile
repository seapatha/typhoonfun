FROM ruby:2.6.0
WORKDIR /helloz
ADD . /helloz
RUN bundle update
RUN bundle install --standalone --clean
EXPOSE 80
ENTRYPOINT ["bundle", "exec", "ruby", "app.rb"]
