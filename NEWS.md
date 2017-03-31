# 'riverdist' 0.13.1.9001 (development version - Mar 30, 2017)

### Added capabilities

* `homerange()` now creates homerange-class objects

* Added `plot.homerange()`, `homerangeoverlap()` and `plothomerangeoverlap()`, which all accept homerange-class objects

* Optimization in `homerange()`: speeded up by a factor of 10ish, depending on the dataset

* Line color in an empty plot with `plot.rivernetwork()` now settable with argument `linecol=`

### Bug fixes

* `mouthdist()` accepts vectors of segment and vertex coordinates

* `segmentnum=` and `empty=` in `plot.rivernetwork()` and others re-implemented

# 'riverdist' 0.13.1 (Feb 3, 2017)

### Added capabilities

* Including a scale bar in `plot.riverdensity()` with `scalebar=T`

### Bug fixes

* Producing plots in `plot.riverdensity()` in the correct order, if `survey` is a factor variable with levels in a different order than alphabetic

# 'riverdist' 0.13.0 (Dec 21, 2016)

### Added capabilities

* Making an empty river plot (using `empty=TRUE`)

* Jittering `riverpoints()` using `jitter` argument

* Optimization in `riverpoints()` and `xy2segvert()`: both were speeded up by a factor of 10

* Optimization in `plot.rivernetwork()`: speeded up by a factor of 2

### Bug fixes

* Allowing vectors of `pch` and `col` in `riverpoints()`

# 'riverdist' 0.12.1 and 0.12.2 (Aug 11, 2016)

### Bug fixes

* A bug in the braiding check algorithm used in `cleanup()` was identified and fixed.

# 'riverdist' 0.12.0 (July 5, 2016)

### Major changes

* Distance calculation is much, much faster since the last CRAN release (0.11.0).  Both the Dijkstra and segroutes algorithm run in about one hundredth the time that they previously did.

* Additional components were added to the rivernetwork class, to aid in distance calculation speed.  `$cumuldist` is a list of vectors of cumulative distances associated with each line segment, and `$distlookup` is a list of lookup tables.  Distance calculation is now done using these components, which will need to be calculated for any saved river network objects. 

### Bug fixes

* Bugs in the `dissolve()` and `homerange()` functions and segroutes algorithm were identified and fixed.

* New connection types were added, to handle special cases in braided networks.

* Error handling in `line2network()` was improved, and more complex networks can now be read in a manageable amount of time.

# 'riverdist' 0.11.0 (initial release June 1, 2016)