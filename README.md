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
- Load `uos/preaf:2.0` docker image by:

```
docker load -i preaf-2.0.tar.gz
```

## Running the PEAF solver (with an example)

- To run the PEAF solver, while inside this repository:

```
 docker-compose -f peaf_docker-compose.yaml up
```

- `peaf_docker-compose.yaml` file can be edited to test other examples by editing command line. Some other arguments of the solver are:

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

## Running the AIF Solver (with an example)

- To run the AIF solver, while inside this repository:

```
docker-compose -f aif_docker-compose.yaml up
```

- `aif_docker-compose.yaml` file can be edited to test other examples by editing command line. Some other arguments of the solver are:

```
usage: AIFSolver
 -e,--errorLevel <arg>    The error level for `approx` and `con_approx`
                          (default=0.01)
 -i,--input <arg>         AIF file path (.json) (required)
 -j,--noThreads <arg>     The number of threads (for `con_exact` and
                          `con_approx`) (default=1)
 -q,--query <arg>         Query file path (.json) (required)
 -t,--type <arg>          The algorithm type: `exact`, `con_exact`,
                          `approx` and `con_approx`) (default=`approx`)
 -u,--uncertainty <arg>   Uncertainty table file path (.json) (optional,
                          otherwise probabilities will be 0.5.)
```
