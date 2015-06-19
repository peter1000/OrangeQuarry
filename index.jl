using Markdown
using Gadfly
using Compose


fig(x) = pad(1em, x)

docpage(tile; padding=2em, widthcap=62em) =
              hbox(pad(4em, tile) |> maxwidth(widthcap), flex())

logo = compose(compose(context(), rectangle()), fill("tomato"))
		  
tabbar = tabs([
	hbox(icon("explore"), hskip(1em), "Tab 1"), 
	hbox(icon("extension"), hskip(1em), "Tab 2"),
	])

tabcontent = pages([
	plot([sin, cos], 0, 25),
	title(3, "web component all the things"),
	])

t, p = wire(tabbar, tabcontent, :tab_channel, :selected)
		  
function main(window)
    push!(window.assets, "codemirror")
    md"""
$(hbox(logo, title(4, "OrangeQuarry")))
$(vskip(1em))
Escher provides primitives that directly map to CSS font styling properties, as well as higher-level functions which form a standard typographic scale you can use to give your documents a consistent, pleasant look. By default, Escher uses the [*Source Sans Pro*](http://www.google.com/fonts/specimen/Source+Sans+Pro) (sans-serif) and [*Source Code Pro*](http://www.google.com/fonts/specimen/Source+Code+Pro) (monospaced) font families for great-looking and legible type.

# What is OrangeQuarry?
$(vskip(1em))

$(vbox(t, p))

    """ |> docpage
end



