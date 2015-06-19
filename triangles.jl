using Compose
using Color

docpage(tile; padding=2em, widthcap=62em) = hbox(pad(4em, tile) |> maxwidth(widthcap), flex())

function sierpinski(n)
    if n == 0
        compose(context(), polygon([(1,1), (0,1), (1/2, 0)]))
    else
        t = sierpinski(n - 1)
        compose(context(),
                (context(1/4,   0, 1/2, 1/2), t),
                (context(  0, 1/2, 1/2, 1/2), t),
                (context(1/2, 1/2, 1/2, 1/2), t))
    end
end

function main(window)
    push!(window.assets, "codemirror")
    
    compose(sierpinski(6)) |> docpage
end