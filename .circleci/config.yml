version: 2
jobs:
  build:
    machine:
      environment:
        image: circleci/classic:latest
    steps:
      - checkout
      - run:
          name: build docker
          command: ./.circleci/setup.sh
