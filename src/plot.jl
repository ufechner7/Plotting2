# example for using plotting in Julia
include("plot_helpers.jl")

x  = 0:0.01:100
y1 = sin.(x)
y2 = cos.(x)

plot(x, y1)
nothing