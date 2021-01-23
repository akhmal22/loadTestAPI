# !/bin/bash
source ~/venv/bin/activate


### MEASURING IN 10 MINUTES SINGLE USER ###

# post with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 15m --host http://127.0.0.1:3000 --csv=POST --tags post

read -t 5

# get with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 15m --host http://127.0.0.1:3000 --csv=GET --tags get

read -t 5

# put with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 15m --host http://127.0.0.1:3000 --csv=PUT --tags put

read -t 5

# delete with 10 minutes and 1 user
locust --headless -u 100 -r 100 --run-time 15m --host http://127.0.0.1:3000 --csv=DELETE --tags delete

### END OF MEASUREMENTS ###


### END OF FILE ###
