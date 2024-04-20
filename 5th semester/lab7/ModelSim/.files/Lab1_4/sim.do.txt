# list all signals in decimal format
add list -decimal *
# read in stimulus
do stim.do
# output results
write list counter.lst
# quit the simulation
quit -f