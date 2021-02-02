#
# bashrc_example.sh
#
# necker shell script example to be sourced in the .bashrc environment
# during interactive startup.
#
# In this example, necker will be locally installed under the workspace
# subdirectory devel. Change as necessary.
#

#echo "${BASH_SOURCE[0]}"

if [[ -f /prj/necker/env.sh ]]
then
  source /prj/necker/env.sh

  export NECKER_INSTALL_PREFIX=${NECKER_WORKSPACE}/devel
fi
