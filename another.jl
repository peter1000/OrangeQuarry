using Markdown
using Color
using Compose

logo = compose(compose(context(), rectangle(0, 0, 2, 2)), fill("tomato"))
logo = flex(logo)


fig(x) = pad(1em, x)

docpage(tile; padding=2em, widthcap=62em) = hbox(pad(4em, tile) |> maxwidth(widthcap), flex())


function main(window)
    push!(window.assets, "codemirror")

    text = plaintext("Hello")
    text = fontcolor("#7a3e3a", text)
    text2 = plaintext("Again")

    box = hbox([hskip(1em), text, hskip(1em), text2])



    master = hbox(logo, box)
    master |> docpage



end