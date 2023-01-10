
#-----------------------------------------------------------------------------#
#                       Assignment 2 machine model file                       #
#-----------------------------------------------------------------------------#

# For assignment 2, you will be using an r-VEX core. The r-VEX does not support
# as many different configurations as the HP VEX compiler; this file lists the
# (few) things that you can vary. (Note: some of the things below here can
# actually be varied in the core. The instruction latencies are one of these
# things, as the r-VEX has a configurable pipeline. The toolchain is not
# sufficiently developed to modify these things as easily as the other things
# though.)

# The r-VEX can be configured to have an issue width of 2, 4, or 8. Each issue
# slot has an ALU, so the number of ALUs must be set to the issue width.
RES: IssueWidth     2
RES: IssueWidth.0   2
RES: Alu.0          2

# The number of multipliers. This can be freely configured between 1 and the
# issue width.
RES: Mpy.0          2

#=============================================================================#
#             For assignment 2, don't change anything below here              #
#=============================================================================#

# Memory configuration. The r-VEX has a single memory unit and a single
# connection to the cache. Prefetching is not available.
RES: Memory.0       1
RES: MemLoad        1
RES: MemStore       1
RES: MemPft         0

# Cluster configuration. The r-VEX does not support clustering, so leave this
# turned off.
# ***Clusters***    1
RES: CopySrc.0      0
RES: CopyDst.0      0

# Number of registers. Must be 63 and 8.
REG: $r0            63
REG: $b0            8

# Functional unit latencies; cannot be modified.
DEL: AluR.0         0
DEL: Alu.0          0
DEL: CmpBr.0        0
DEL: CmpGr.0        0
DEL: Select.0       0
DEL: Multiply.0     1
DEL: Load.0         1
DEL: LoadLr.0       1
DEL: Store.0        0
DEL: Pft.0          0
DEL: CpGrBr.0       0
DEL: CpBrGr.0       0
DEL: CpGrLr.0       0
DEL: CpLrGr.0       0
DEL: Spill.0        0
DEL: Restore.0      1
DEL: RestoreLr.0    1

CFG: Quit           0
CFG: Warn           0
CFG: Debug          0
