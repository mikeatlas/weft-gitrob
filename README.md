# weft-gitrob

weft-gitrob is a collection of scripts to make it possible to run the [gitrob](https://github.com/michenriksen/gitrob) tool locally, using only docker containers.

### Configuration

    % git clone git@github.com:weftio/weft-gitrob.git
    cd weft-gitrob
    touch .env

Create your own `.env` file in the root of `weft-gitrob` directory. It needs the following values:

    DB_USER=gitrob
    DB_PASS=your_choice
    GITHUB_ORG_NAME=your_org
    GH_TOKEN1=generate_your_token1
    GH_TOKEN2=generate_your_token1
    GH_TOKEN3=generate_your_token1

Where `generate_your_token` should be replaced with a few GitHub [personal access tokens](https://github.com/settings/tokens)

### Builing

    % docker-compose build

### Running weft-gitrob locally

You can start weft-gitrob locally, and have it launch the web results, by running:

    % docker-compose up && \
      open -a "Google Chrome" http://$(boot2docker ip):9393

