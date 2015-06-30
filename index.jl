using Markdown
using Compose
using Gadfly

padThing(x) = Escher.pad(2em, x)

docpage(tile; padding=2em, widthcap=60em) = hbox(Escher.pad(2em, tile) |> maxwidth(widthcap), Escher.flex())

function main(window)

    mytitle = Escher.title(4, "OrangeQuarry")
    mytitle = vbox(vskip(2em), mytitle)

    rec = rectangle()

    logotest = compose( context(),
            (context(0, 0, .7, .8), rec, fill("tomato")),
            (context(.2, .2, .3, .4), rec, fill("tomato")),
            (context(.3, .3, .1, .1), rec, fill("tomato")),
            (context(.3, .3, .3, .4), rec, fill("tomato"))
        )

    logo = compose(context(0, 0, .75, 1), rec, fill("tomato"))
    logo = padThing(logo)

    header = hbox([logo, hskip(1em), mytitle, hskip(10em)])
    
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
    
    todolist = hbox([hskip(4em), todolist, hskip(10em)])

    all_the_things = vbox([header, todolist, vskip(10em)])
    all_the_things = fillcolor("#FDFBF9", all_the_things)
    all_the_things
    # all_the_things |> docpage

end