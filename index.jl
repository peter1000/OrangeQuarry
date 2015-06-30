using Markdown
using Compose

padThing(x) = Escher.pad(2em, x)

docpage(tile; padding=2em, widthcap=60em) = hbox(Escher.pad(2em, tile) |> maxwidth(widthcap), flex())

function main(window)
    
    mytitle = Escher.title(4, "OrangeQuarry")
    
    rec = rectangle()

    smallblock = compose(context(0, 0, .1, .2), rectangle())


    logo2 = compose(context(),
            (context(), rec, fill("tomato")
                ),
            (context(), circle(), fill("bisque")),)


    logo = compose(compose(context(0, 0, .75, 1), rec), fill("tomato"))
    
    logo = compose(context(0, 0, .75, 1), rec, fill("tomato"))
    # mytitle = fillcolor("#a4c2f9", mytitle)

    header = hbox(map(padThing, [logo2, mytitle]))
    
    todolist = md"""
            **Things to do:**

            - Get to do list better formated 
            - Define layout
            - Get Icon up
            - Make a titile
            - Connect to orangequarry.com
            - Figure out how to run on web servers
            - Learn in general
            """ 
    
    all_the_things = vbox([header, todolist])
    all_the_things |> docpage
    # logo2

end