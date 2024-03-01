using MyPublicPkg
using Documenter

DocMeta.setdocmeta!(MyPublicPkg, :DocTestSetup, :(using MyPublicPkg); recursive=true)

makedocs(;
    modules=[MyPublicPkg],
    authors="",
    sitename="MyPublicPkg.jl",
    format=Documenter.HTML(;
        canonical="https://MyExampleOrg.github.io/MyPublicPkg.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MyExampleOrg/MyPublicPkg.jl",
    devbranch="master",
    push_preview = true,
)
