# PHP XDebug

## Loopback IP

Add loopback IP alias:

```
# ifconfig lo0 -alias 10.254.254.254
```

Remove loopback IP alias:

```
# ifconfig lo0 alias 10.254.254.254
```

## VS Code

Setup `launch.json`

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug",
            "type": "php",
            "request": "launch",
            "port": 9000,
            "pathMappings": {
                "/var/www/html": "${workspaceRoot}"
            }
        }
    ]
}
```

[Debugging: Launch.json attributes](https://code.visualstudio.com/docs/editor/debugging#_launchjson-attributes)

## Debug Web Script

Launch container:

```
$ docker run -d -p 8080:80 --rm php-xdebug
```

Make HTTP request:

```
$ curl http://localhost:8080/hello_world.php
```

## Debug CLI Script

Launch container:

```
$ docker run -it --rm php-xdebug bash
```

Run PHP script:

```
# php ./hello_world.php
```

---

[Configure remote debugging with XDebug for php docker container on macOS](https://medium.com/@yuliakostrikova/configure-remote-debugging-with-xdebug-for-php-docker-container-on-macos-8edbc01dc373)
