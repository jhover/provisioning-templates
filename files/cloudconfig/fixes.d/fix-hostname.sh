# Give this host a random hostname if it doesn't get something
# unique from DHCP. 

SN=`hostname --short`
if [ "${SN}x" == "localhostx" ] ; then
   hostname $RANDOM.localdomain
fi