# DockerisePrEAF

## Building an image

- Run

```
python3 build_image.py
```
- or (without the build script)

```
docker build -t uos/preaf:latest . --no-cache
```

## Using an already built image 
- Load `uos/preaf:1.0` docker image by:

```
docker load -i preaf-1.0.tar.gz
```

## Running the solver (with an example)

- To run the solver, while inside this repository:

```
docker-compose up
```

- `docker-compose.yaml` file can be edited to test other examples by editing command line. Some other arguments of the solver are:

```
usage: PEAFSolver
-e,--errorLevel <arg>   The error level for `approx` and `con_approx`
                         (default=0.01)
 -i,--input <arg>        PrEAF file path (required)
 -j,--noThreads <arg>    The number of threads (for `con_exact` and
                         `con_approx`) (default=1)
 -t,--type <arg>         The algorithm type: `exact`, `con_exact`,
                         `approx` and `con_approx`) (default=`approx`)
```
