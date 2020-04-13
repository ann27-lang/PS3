using CSV
using DelimitedFiles

#Part A
x = CSV.read("C:\\Users\\USER\\Desktop\\Julia\\Problem Set 3\\stoicharray.csv")
y = CSV.read("C:\\Users\\USER\\Desktop\\Julia\\Problem Set 3\\atomarray.csv")

S = convert(Matrix, x)
A = convert(Matrix, y)

# S is stoichiometric matrix
# A is atom matrix

#Part B
check1 = transpose(A)*S

#Since check1 is not balanced, must adjust for boundary species
x_bound = CSV.read("C:\\Users\\USER\\Desktop\\Julia\\Problem Set 3\\stoicharraybound.csv")
y_bound = CSV.read("C:\\Users\\USER\\Desktop\\Julia\\Problem Set 3\\atomarraybound.csv")

S_bound = convert(Matrix, x_bound)
A_bound = convert(Matrix, y_bound)

check2 = transpose(A_bound)*S_bound

# Part C
include("Flux.jl")

#objective: maximize urea production
c = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

#using Vmax for upper bound
fluxbound1 = convert(Matrix, CSV.read("C:\\Users\\USER\\Desktop\\Julia\\Problem Set 3\\fluxbounddefault.csv"))

speciesbound = convert(Matrix, CSV.read("C:\\Users\\USER\\Desktop\\Julia\\Problem Set 3\\speciesbound.csv"))

#Solve lp problem
(objective_value, flux_array, dual_array, uptake_array, exit_flag) = calculate_optimal_flux_distribution(S, fluxbound1, speciesbound, c)
maxrate = -1*objective_value
