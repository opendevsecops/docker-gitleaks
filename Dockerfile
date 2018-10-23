FROM circleci/golang:latest

WORKDIR /

RUN true \
    && go get -u github.com/zricethezav/gitleaks

ENTRYPOINT ["gitleaks"]
