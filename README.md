# weft-gitrob

weft-gitrob is a collection of scripts to make it possible to run the [gitrob](gitrob) tool locally, using only docker containers.

### Configuration

    % git clone git@github.com:weftio/weft-gitrob.git

Create your own `.env` file in the root of `weft-gitrob` directory. It needs the following values:

    DB_USER=ask_somebody
    DB_PASS=ask_somebody
    GITHUB_ORG_NAME=ask_somebody
    GH_TOKEN1=ask_somebody
    GH_TOKEN2=ask_somebody
    GH_TOKEN3=ask_somebody

Where `ask_somebody` should be replaced with values someone else should be able to provide you with.

### Running weft-gitrob Locally

You can start weft-gitrob locally by running:

    % docker-compose up && \
      open -a "Google Chrome" http://$(boot2docker ip):9393

