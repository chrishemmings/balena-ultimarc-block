# Balena Ultimarc Block

![Balena Ultimarc Block](./logo-sm.png)

Want to configure your [Ultimarc](https://www.ultimarc.com/) controller mappings at boot up?
Use this tiny (<60MB) image to set your configuration from a Base64 encoded JSON environment variable.

Build with the [Ultimarc-Linux](https://github.com/katie-snow/Ultimarc-linux) library on top of 
[Alpine Linux](https://www.alpinelinux.org/).

Incredibly easy to use, just set an environment variable called `KEY_BINDINGS` inside you Balena device and this
block will send it to you controller when it starts up.

To Base64 encode your configuration, use an online encoder like https://www.base64encoder.io/.  Paste your controller
JSON configuration in, then copy the encoded value into the value of you `KEY_BINDINGS` environment variable.  

If you need some default configuration mapping files for your controller, take a look in the Ultimarc Linux 
repository https://github.com/katie-snow/Ultimarc-linux/tree/master/src/umtool

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/chrishemmings/balena-ultimarc-block)