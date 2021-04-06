### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ f8b038f2-b4c9-4aa1-8e85-f39cda98f7db
using CSV

# ╔═╡ 07e1f5a0-a74b-4d36-a4b4-0849d128114a
using DataFrames

# ╔═╡ 7dcb7251-dd52-427b-9d4d-a65da96e4440
using StatsPlots

# ╔═╡ b9f70c6c-6851-455c-bb13-8e3b2088d9a3
covid_data = CSV.read(download("https://api.coronavirus.data.gov.uk/v2/data?areaType=utla&metric=newCasesBySpecimenDate&format=csv"), DataFrame)

# ╔═╡ 911bcaf4-3bea-428e-9ddf-ae5b93820762
@df covid_data plot?(
	:date :newCasesBySpecimenDate,
	group = :areaCode
)

# ╔═╡ Cell order:
# ╠═f8b038f2-b4c9-4aa1-8e85-f39cda98f7db
# ╠═07e1f5a0-a74b-4d36-a4b4-0849d128114a
# ╠═7dcb7251-dd52-427b-9d4d-a65da96e4440
# ╠═b9f70c6c-6851-455c-bb13-8e3b2088d9a3
# ╠═911bcaf4-3bea-428e-9ddf-ae5b93820762
