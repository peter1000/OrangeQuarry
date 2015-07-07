using Markdown
using Compose
using Gadfly

padThing(x) = Escher.pad(2em, x)


function main(window)

    # mytitle = Escher.title(4, "OrangeQuarry")
    mytitle = title(4, "OrangeQuarry")
    mytitle = vbox(vskip(2em), mytitle)

    rec = Compose.rectangle([0], [0], [1], [1])
    logo = compose(context(0, 0), rec, fill("tomato"))
    # logo = compose(context(), rec, fill("tomato"))

    logo = logo |> padThing


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

    all_the_things = vbox([header, todolist, vskip(8em)])
    all_the_things = fillcolor("#FDFBF9", all_the_things)
    all_the_things

end

