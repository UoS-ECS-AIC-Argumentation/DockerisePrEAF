# DockerisePrEAF

## Building an image

- Run

```
python3 build_image.py
```
- or (without the build script)

```
docker build -t "uos/preaf:3.0" . --no-cache
```

## Using an already built image 
- Load `uos/preaf:3.0` docker image by:

```
docker load -i preaf-3.0.tar.gz
```

## Running the AIF solver (with an example)

- To run the AIF solver, while inside this repository:

```
 docker-compose -f docker-compose.yaml up
```

- `docker-compose.yaml` file can be edited to test other examples by editing command line. Some other arguments of the solver are:

```
usage: Runner
 -i,--input <arg>    AIF file path (.json) (required)
 -o,--output <arg>   AIF file path (.json) (required)
``