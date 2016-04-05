# ENSC350-FIR_Filter
Register-transfer level (RTL) design of a parametric finite impulse response (FIR) filter in VHDL.
## Configuration
The parameters for the FIR filter are defined in a VHDL package in the aptly named FIR_package.vhd. Changing these constants will change the simulation of the FIR filter without having to touch FIR.vhd.
### Parameters
The following characteristics of the filter can be modified
 * **SIZE** of input data
 * Number of **TAPS** in filter
 * Tap coefficients **C**
 
## Simulation
Also included is a test bench used to simulate the FIR in ModelSim. It includes non synthesizable statements for generating input stimuli for the unit under test (UUT), which in this case is out FIR filter.
