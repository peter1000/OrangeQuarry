function main(window)
    push!(window.assets, "tex")

    txt = tex("T = 2\\pi\\sqrt{L\\over g}")
    txt1 = fontcolor("#499", txt)
    txt2 = pad(5mm, txt1)
    txt3 = fillcolor("#eeb", txt2)

    vbox(txt, txt1, txt2, txt3)
end