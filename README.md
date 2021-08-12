# 🐶 Woof woof! Your docker is on!

This is a simple flask demo app for testing if your docker host can successfully run a web framework on itself. You can also treat it as a general test docker that you can use it to see if a new docker host is working properly after the fresh installation.

## How to get it?

Before doing everything, you need to install the docker first.

And then, you can type this command into the command line (or you can call it "terminal") of your new/used docker host. Hit enter (I bet you knew that) and sit tight!

``` sh
docker pull lilingxi01/docker-woof:latest
```

After pulling, you can double check if the image is downloaded successfully by typing:

``` sh
docker images
```

## How to start it?

If you want to simply run it and do not care about everything (including everything that may happen like not getting a result and being stuck in the log page, etc), this command is for you.

> Do NOT execute the command yet, continue reading the entire part before executing, alright?

``` sh
docker run lilingxi01/docker-woof
```

Okay, alright, stop! I don't think that you are going to run it that simple because you are just running it and getting nothing useful on doing that. Please check out the "useful" version below!

## How to start it usefully?

Since you need to link the port of a container to the port of your docker host, you must add `--port` option on running.

And for a convenience deletion (I don't think you want to keep this simple doggy program forever), do not forget to add `--rm` in order to automatically destroy the container after it is exited.

``` sh
docker run --rm --name doggy --port 80:5000 -d lilingxi01/docker-woof
```

And, for an easier stopping, I associate a name "doggy" onto the container (by calling `--name doggy`). So when you want to stop it, you have to use the following command because you are going to find out that the Ctrl+C combo is not working!

``` sh
docker stop doggy
```

If you are stuck inside a flask log page, simply open another terminal window or make another host connection and execute the command as normal.

By the way, I add a `-d` option to detach the program from the CLI so that you are not going to get stuck in the log page if everything is going expectedly.

## Then what?

You can now call the ip address of the docker host to get the fresh woof-woof!

Please avoid using the address showing on the log page, use ip address (or localhost) with 80 port makes more sense!

``` sh
curl localhost
```

I am not going to tell you what the output is because you are able to distinguish a doggy barking and trashy error outputs, right?

## Note

- Sometimes (like my case on Ubuntu), you need super-user privilege to proceed the docker command. Otherwise you will get a permission denied error or something. Simply add `sudo` at the front of every commands and you are all set.