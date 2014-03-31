#
# Setup ATLAS-specific things...
#

if [ -z $DQ2_HOME ]; then
. /cvmfs/atlas.cern.ch/repo/sw/ddm/latest/setup.sh
fi
export RUCIO_HOME=/cvmfs/atlas.cern.ch/repo/sw/ddm/rucio-clients/0.1.12
export RUCIO_AUTH_TYPE=x509_proxy
export VOMS_PROXY_INFO_DONT_VERIFY_AC="true"
export VO_ATLAS_SW_DIR=/cvmfs/atlas.cern.ch/repo/sw
export ATLAS_LOCAL_AREA=/home/osg/app/atlas_app/local

