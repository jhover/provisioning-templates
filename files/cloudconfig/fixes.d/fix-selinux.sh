#
# Ensure that the RPM file is overridden for next boot at least. 

if [ -f /etc/cloudconfig/selinux.sysconfig ]; then
 cp /etc/cloudconfig/selinux.sysconfig /etc/selinux/config
fi