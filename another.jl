using Markdown
using Color
using Compose

logo = compose(compose(context(), rectangle(0, 0, 2, 2)), fill("tomato"))
# logo = flex(logo)



fig(x) = Escher.pad(1em, x)

docpage(tile; padding=2em, widthcap=62em) = hbox(Escher.pad(4em, tile) |> maxwidth(widthcap), flex())


function main(window)
    push!(window.assets, "codemirror")

    # text = plaintext("Hello")
    # text = fontcolor("#7a3e3a", text)
    # text2 = plaintext("Again")

    # box = hbox([hskip(1em), text, hskip(1em), text2])

    master = title(4, "Hello")
    # master = hbox(logo, box)

    typeexample(code, output=eval(parse(code))) =
      vbox(
         codemirror(code, readonly=true, linenumbers=false) |> fontcolor("#777"),
         output |> Escher.pad([left], 2em))

    
    
    titles = vbox(
       intersperse(vskip(2em),
           map(n -> typeexample("title($n, \"Title $n\")"), 4:-1:1)))
    # logo |> docpage

    master = fig(master)
    master |> docpage
    



end