# Simple Mtail Example

This is a pretty simple example of how to use mtail locally.

## Demo
1. Start the fake log generator. `./scripts/gen-fake-logs.sh`. This will start generating fake kamailio messages and output them to `fake.log`.
2. Start mtail (install if needed) `./scripts/start-mail.sh`. This will start mtail in the foreground.
3. View metrics [here](http://localhost:3903/metrics)
