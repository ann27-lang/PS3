# PS3
CHEME-5440-7770 Problem Set 3, FBA

With the code I have written, in order to use the .csv files that are also in the repository, you must edit the destination in the CSV.read lines of the code in the script Pset3Code.jl. All the arrays used in the code are in the stoichandatomarrays.xlsx file in the repository that have each row and column labelled.

Once the destinations have been edited, you can issue the command:

  ```jl
    julia > include("PSet3Code.jl")
  ```

The output is from the function calculate_optimal_flux_distribution from Flux.jl. However, if you want to see answers for part a to part c, you can write the variable names (shown below in **bold**) in the Julia command line. 

### Part a ###
The stoichiometric matrix can be shown in Julia as variable **S**.

### Part b ###
The first part of checking balances had the v<sub>1</sub> to v<sub>5</sub> balanced, but not the boundary (b<sub>j</sub>) reactions (this check balance matrix is called **check1**). Thus, the boundary species were added to both the stoichiometric matrix and atomic matrix to get a check balance matrix of all 0's (matrix called **check2**).

### Part c ###
The maximum rate of urea production ended up being 2.22 mmol/gDW-hr (**maxrate**), and the different rates for each reaction is shown by the variable **flux_array**.
