docker-salt
===========

Docker container to test salt-states

1. Create a `minion` file, example at `minion.template`
2. Build: `docker build -t='salt-test' .`
3. Start: `docker run -t -i -v $1:/srv/salt -v $2:/srv/pillar salt-test /bin/bash` where:
    1. `$1` e.g. `/Users/code/salt/salt`
    2. `$2` e.g. `/Users/code/salt/pillar`
