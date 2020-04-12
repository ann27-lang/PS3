# PS3
CHEME-5440-7770 Problem Set 3, FBA

With the code I have written, in order to use the csv files that are also in the repository, you must edit the destination in the CSV.read lines of the code.

### Part a ###
Stoichiometric matrix S is in stoicharray.csv, which will be shown in the code as well when ran in Julia as variable S.

### Part b ###
The first part of checking balances had the v<sub>1</sub> to v<sub>5</sub> balanced, but not the boundary (b<sub>j</sub>) reactions (check balance matrix called check1). Thus, the boundary species were added to both the stoichiometric matrix and atomic matrix to get a check balance matrix of all 0's (matrix called check2).

### Part c ###
The maximum rate of urea production ended up being 2.22 mmol/gDW-hr, and the different rates for each reaction is shown by the variable flux_array.
