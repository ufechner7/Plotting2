# Plotting with Bokeh

## Installation
1. install Julia as explained for example [here](https://ufechner7.github.io/2022/08/18/installing-julia.html)
2. clone this repository
3. change into the folder Plotting2
```
cd Plotting2
```
4. run from bash
```bash
julia --project
```
Run from the julia prompt:
```julia
using Pkg
Pkg.instantiate()
```
## Executing the example
```julia
include("src/plot.jl")
```

## Creating a system image
To reduce the startup time it is possible to create a system image. This can be done using the following steps
```bash
cd Plotting2
julia --project
```
On the Julia prompt now execute
```julia
using AutoSysimages
install()
exit()
```
Launch asysimg:
```
./bin/run_julia
```
On the asysimg prompt now execute:
```julia
@time include("src/plot.jl")
```
and close the plotting window.

Now quit Julia with:
```julia
exit()
```
You get the question: "... Do you want to build one?"  
Answer with "Yes" by just pressing \<ENTER\>.

This will take a few minutes.

If you now start Julia again with the command:
```bash
asysimg --project
```
and execute on the Julia prompt:
```julia
@time include("src/plot.jl")
```
it should go much faster, but it does not show the plot window...

Tested on Ubuntu.
