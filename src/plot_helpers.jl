using Bokeh, BokehBlink
Bokeh.settings!(display=:blink)

function plot(x, y; keywords...)
    p = figure(; sizing_mode="fixed", width=1200, height=900) # stretch_both
    Bokeh.plot!(p, Bokeh.Line; x=x, y=y, color="blue", keywords...)
    display(p)            
end
