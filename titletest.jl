using Markdown
using Compose
using Gadfly


function main(window)


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

    # mytitle = Escher.title(4, "OrangeQuarry")
    mytitle = title(4, "OrangeQuarry")
    
    tmp = vbox(mytitle, todolist)
    tmp
    # mytitle
end