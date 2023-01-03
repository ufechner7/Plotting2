using Bokeh, BokehBlink
Bokeh.settings!(display=:blink)

function plot(x, y; keywords...)
    p = figure(; sizing_mode="fixed", width=1200, height=700) # stretch_both
    # p = figure(; sizing_mode="stretch_both", width=1200, height=700) # stretch_both
    Bokeh.plot!(p, Bokeh.Line; x=x, y=y, color="blue", line_width=2, keywords...)
    display(p)            
end
