# 'riverdist' 0.12.0

## Major changes

* Distance calculation is much, much faster since the last CRAN release (0.11.0).  Both the Dijkstra and segroutes algorithm run in about one hundredth the time that they previously did.

* Additional components were added to the rivernetwork class, to aid in distance calculation speed.  `$cumuldist` is a list of vectors of cumulative distances associated with each line segment, and `$distlookup` is a list of lookup tables.  Distance calculation is now done using these components, which will need to be calculated for any saved river network objects. 

## Bug fixes

* Bugs in the `dissolve()` and `homerange()` functions and segroutes algorithm were identified and fixed.

* New connection types were added, to handle special cases in braided networks.

* Error handling in `line2network()` was improved, and more complex networks can now be read in a manageable amount of time.