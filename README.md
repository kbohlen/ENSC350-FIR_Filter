# ENSC350-FIR_Filter
Register-transfer level (RTL) design of a parametric finite impulse response filter in VHDL
## Configuration
The parameters for the FIR filter are defined in a VHDL package in the aptly named FIR_package.vhd. Changing these constants will change the simulation of the FIR filter without having to touch FIR.vhd.
### Parameters
The following characteristics of the filter can be modified
  * Size
  * Number of Taps
  * Tap Coefficients 
