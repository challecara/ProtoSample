FROM google/dart

RUN set -ex

ENV APP_ROOT=/workspace
RUN mkdir $APP_ROOT
RUN mkdir $APP_ROOT/.fvm

WORKDIR $APP_ROOT

ADD ./pubspec.yaml $APP_ROOT/pubspec.yaml
ADD ./.fvm/fvm_config.json $APP_ROOT/.fvm/fvm_config.json

RUN apt-get update && apt-get install unzip
RUN dart pub global activate fvm
RUN fvm install
RUN fvm flutter pub get
RUN fvm flutter config --enable-web
