# composer

Improoved version of Official [Composer](https://hub.docker.com/_/composer) image with the following add-ons

- Support for local cache (speed up 10x your development)

## Usage

Standalone usage, copy and paste the following command to install your dependencies avoiding download packages at each run

```sh
docker run --rm -it -v /tmp -v $PWD:/app javanile/composer install
```

with Docker Compose

```yaml
version: "3"

services:
  composer:
    image: javanile/composer
    volumes:
      - ./:/app/
      - /tmp/:/tmp/
```

## License

[MIT](LICENSE) © [Francesco Bianco](https://github.com/francescobianco).
