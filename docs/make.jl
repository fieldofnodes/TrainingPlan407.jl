using TrainingPlan407
using Documenter

DocMeta.setdocmeta!(TrainingPlan407, :DocTestSetup, :(using TrainingPlan407); recursive=true)

makedocs(;
    modules=[TrainingPlan407],
    authors="Jonathan Miller jonathan.miller@fieldofnodes.com",
    sitename="TrainingPlan407.jl",
    format=Documenter.HTML(;
        canonical="https://fieldofnodes.github.io/TrainingPlan407.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fieldofnodes/TrainingPlan407.jl",
    devbranch="main",
)
