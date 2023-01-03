using SnoopCompileCore
invs = @snoopr using Bokeh, BokehBlink;
tinf = @snoopi_deep begin
        Bokeh.settings!(display=:blink)
        function plot(x, y; keywords...)
            p = figure(; sizing_mode="fixed", width=1200, height=700) # stretch_both
            # p = figure(; sizing_mode="stretch_both", width=1200, height=700) # stretch_both
            Bokeh.plot!(p, Bokeh.Line; x=x, y=y, color="blue", line_width=2, keywords...)
            display(p)            
        end
        x  = 0:0.01:100
        y1 = sin.(x)
        y2 = cos.(x)

        plot(x, y1)
        nothing
    end
using SnoopCompile
trees = invalidation_trees(invs);
staletrees = precompile_blockers(trees, tinf)