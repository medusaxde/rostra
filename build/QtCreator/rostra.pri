########################################################################
# Copyright (c) 1988-2023 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: rostra.pri
#
# Author: $author$
#   Date: 3/4/2023
#
# build specific QtCreator project file for texta framework rostra
########################################################################
# Depends: nadir

contains(BUILD_OS,Uname) {
UNAME = $$system(uname)

contains(UNAME,Darwin) {
BUILD_OS = macosx
} else {
contains(UNAME,Linux) {
BUILD_OS = linux
} else {
contains(UNAME,Windows) {
BUILD_OS = windows
} else {
BUILD_OS = os
} # contains(UNAME,Windows)
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
} else {
contains(BUILD_OS,ROSTRA_OS) {
} else {
BUILD_OS = os
} # contains(BUILD_OS,ROSTRA_OS)
} # contains(BUILD_OS,Uname)

#BUILD_CPP_VERSION = 11

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#

# build nadir INCLUDEPATH
#
build_nadir_INCLUDEPATH += \

# build nadir DEFINES
#
build_nadir_DEFINES += \

# build nadir FRAMEWORKS
#
build_nadir_FRAMEWORKS += \

# build nadir LIBS
#
build_nadir_LIBS += \

########################################################################
# rostra

# build rostra INCLUDEPATH
#
build_rostra_INCLUDEPATH += \
$${build_nadir_INCLUDEPATH} \


# build rostra DEFINES
#
build_rostra_DEFINES += \
$${build_nadir_DEFINES} \


# build rostra FRAMEWORKS
#
build_rostra_FRAMEWORKS += \
$${build_nadir_FRAMEWORKS} \


# build rostra LIBS
#
build_rostra_LIBS += \
$${build_nadir_LIBS} \

########################################################################
