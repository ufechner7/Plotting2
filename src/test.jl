using SnoopCompile
invalidations = @snoopr begin
    # Your code goes here!
    # example for using plotting in Julia
    using Bokeh, BokehBlink
    Bokeh.settings!(display=:blink)
    
    function plot(x, y; keywords...)
        p = figure(; sizing_mode="fixed", width=1200, height=700) # stretch_both
        Bokeh.plot!(p, Bokeh.Line; x=x, y=y, color="blue", line_width=2, keywords...)
        display(p)            
    end

    x  = 0:0.01:100
    y1 = sin.(x)

    plot(x, y1)
    nothing
end;
trees = SnoopCompile.invalidation_trees(invalidations);
@show length(SnoopCompile.uinvalidated(invalidations)) # show total invalidations
show(trees[end]) # show the most invalidated method
# Count number of children (number of invalidations per invalidated method)
n_invalidations = map(trees) do methinvs
    SnoopCompile.countchildren(methinvs)
end
import Plots
Plots.plot(
    1:length(trees),
    n_invalidations;
    markershape=:circle,
    xlabel="i-th method invalidation",
    label="Number of children per method invalidations"
)
