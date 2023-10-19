#!/bin/bash

echo "user:x:${UID}:${GID}:user:/tmp:/bin/bash" >> /etc/passwd

sudo -u user bash -c 'export DISPLAY=:0 && jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser'
