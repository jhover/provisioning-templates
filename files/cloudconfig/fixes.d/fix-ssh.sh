#
# Imagefactory seems to mess with this, so ensure that
# these exist. 

if [ ! -d /root/.ssh ]; then
  mkdir -p /root/.ssh
  chmod go-rwx /root/.ssh

fi

AUTHKEYS=/root/.ssh/authorized_keys
DEFKEYS=/etc/ssh/default_authorized_keys

if [ ! -f $AUTHKEYS ]; then
   echo "auth keys doesn't exist. copying..."
   cp /etc/ssh/default_authorized_keys /root/.ssh/authorized_keys
   chmod -R go-rwx /root/.ssh
else
   echo "auth keys does exist. check entries..."        
  OLD_IFS=$IFS      # save the field separator           
  IFS=$'\n'     # new field separator, the end of line           
  for line in $(cat /etc/ssh/default_authorized_keys)
  do
    key=`echo $line | awk '{print $2}'`
    #echo "key is $key"
    grep $key $AUTHKEYS || echo $line >> $AUTHKEYS
   done
  IFS=$OLD_IFS     # restore default field separator 

fi

# unconditionally fix sshd_config and restart. 
cp /etc/ssh/default_sshd_config /etc/ssh/sshd_config
service sshd restart
