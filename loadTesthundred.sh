# !/bin/bash
source ~/venv/bin/activate


### MEASURING IN 10 MINUTES SINGLE USER ###

# post with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 10m --host http://127.0.0.1:3000 --csv=POST --tags post

# get with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 10m --host http://127.0.0.1:3000 --csv=GET --tags get

# put with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 10m --host http://127.0.0.1:3000 --csv=PUT --tags put

# delete with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 10m --host http://127.0.0.1:3000 --csv=DELETE --tags delete

### END OF MEASUREMENTS ###


### END OF FILE ###
