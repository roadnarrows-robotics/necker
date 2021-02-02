#
# Necker LLC 
#

# libpleistocene package
find_library(LIBPLEISTOCENE
  NAMES pleistocene
  PATHS /usr/local/lib/necker
)

# all package libraries
set(necker_LIBRARIES 
  ${LIBPLEISTOCENE}
)

# package include directories
set(necker_INCLUDE_DIRS /usr/local/include)
