# Plotting with Bokeh

## Installation
1. install Julia 1.9  
   jill install 1.9 --unstable  
   jill switch 1.9
2. clone this repository
3. checkout branch julia-1.
4. change into the folder Plotting2
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
@time @eval include("src/plot.jl")
```

First execution time: 10.8s
Laptop: 11.16s

Tested on Ubuntu.
