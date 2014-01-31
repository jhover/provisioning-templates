#
# Ensure that the RPM file is overridden for next boot at least. 
echo 0 >/selinux/enforce

if [ -f /etc/cloudconfig/selinux.sysconfig ]; then
 cp -f /etc/cloudconfig/selinux.sysconfig /etc/selinux/config
fi