#
# necker development environment bash/sh shell script.
#
# source env.sh
#

#echo "${BASH_SOURCE[0]}"

# retreive python3's major.minor version 
_python3_version()
{
  local v
  py=$(which python3)
  if [ -x "${py}" ]
  then
    v=$(${py} --version 2>&1)
    v=${v#[Pp]ython* }
    v=${v%.[0-9]*}
    echo $v
  else
    echo ''
  fi
}

# paranormal test to see if the component $1 is in the search path $2
_inpath()
{
  local comp
  echo "${2//:/$'\n'}" | while read comp
  do
    if [ "${1}" = "${comp}" ]
    then
      return 0
    fi
  done
  return 1
}

# _prepend dir path
#   Prepend directory dir to search path iff dir is not already in path.
_prepend()
{
  local npath=
  # empty path
  if [ -z "${2}" ]
  then
    npath="${1}"
  # search path for dir
  else
    local parray comp
    #for comp in ${2//:/$'\n'}
    #IFS=':' read -a parray <<< "${2}"
    for comp in "${parray[@]}"
    do
      # already in path?
      if [ "${1}" = "${comp}" ]
      then
        npath="${2}"
        break
      fi
    done
  fi
  # prepend new directory
  if [ -z "${npath}" ]
  then
    npath="${1}:${2}"
  fi
  echo "${npath}"
}

# When this file is sourced, the top of the bash source stack will be this
# file's relative/absolute pathname. Use this to autoset workspace root
# directory.
_root=/prj/necker
#_root=$(dirname ${BASH_SOURCE[0]}) # self discovery method specific to bash

# workspace root directory path
export NECKER_WORKSPACE=$(realpath ${_root})

# python3 major.minor version
export NECKER_PYTHON_VERSION=$(_python3_version)

# default rnmake architecture, assumed to be also the native architecture
if [ -z "${RNMAKE_ARCH_DFT}" ]
then
  export NECKER_ARCH_DFT=${RNMAKE_ARCH_DFT}
else
  export NECKER_ARCH_DFT=x86_64
fi

# development distribution path
_dist=${NECKER_WORKSPACE}/dist/dist.${NECKER_ARCH_DFT}

# fix up PATH to include distribution bin
_bindir=${_dist}/bin
export PATH=$(_prepend "${_bindir}" "${PATH}")

# fix up LD_LIBRARY_PATH to include distribution libraries
_libdirs="${_dist}/lib ${_dist}/lib/necker"
for _d in ${_libdirs}
do
  export LD_LIBRARY_PATH=$(_prepend "${_d}" "${LD_LIBRARY_PATH}")
done

# fix up PYTHONPATH to include distribution python site packages
_pydir=${_dist}/lib/python${NECKER_PYTHON_VERSION}/site-packages
export PYTHONPATH=$(_prepend "${_pydir}" "${PYTHONPATH}")

unset _python3_version _inpath _prepend _root _dist _bindir _libdirs _pydir _d
