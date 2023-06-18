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
# generic QtCreator project .pri file for framework rostra
########################################################################
# Depends: nadir

OTHER_RPO = ../../../../../../..
OTHER_PKG = ../../../../../..
OTHER_PRJ = ../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/source/$${THIRDPARTY_NAME}

########################################################################
# nadir
NADIR_VERSION_MAJOR = 0
NADIR_VERSION_MINOR = 0
NADIR_VERSION_RELEASE = 0
NADIR_VERSION = $${NADIR_VERSION_MAJOR}.$${NADIR_VERSION_MINOR}.$${NADIR_VERSION_RELEASE}
NADIR_NAME = nadir
NADIR_GROUP = $${NADIR_NAME}
NADIR_SOURCE = source
NADIR_CREDS = creds
NADIR_DIR = $${NADIR_GROUP}/$${NADIR_NAME}-$${NADIR_VERSION}
NADIR_PKG_DIR = $${NADIR_NAME}
NADIR_BUILD_HOME = $${HOME}
NADIR_HOME_BUILD = $${NADIR_BUILD_HOME}/build/$${NADIR_NAME}
NADIR_HOME_BUILD_INCLUDE = $${NADIR_HOME_BUILD}/include
NADIR_HOME_BUILD_LIB = $${NADIR_HOME_BUILD}/lib
NADIR_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${NADIR_DIR}
NADIR_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${NADIR_DIR}
NADIR_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${NADIR_PKG_DIR}
NADIR_THIRDPARTY_SRC_GROUP = $${NADIR_GROUP}
NADIR_THIRDPARTY_SRC_NAME = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${NADIR_THIRDPARTY_SRC_GROUP}/$${NADIR_THIRDPARTY_SRC_NAME} 
NADIR_PKG = $${OTHER_PKG}/$${NADIR_PKG_DIR}
NADIR_PRJ = $${OTHER_PRJ}/$${NADIR_PKG_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_SRC_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_PKG}/$${NADIR_SOURCE}
#NADIR_SRC = $${NADIR_THIRDPARTY_PRJ}/$${NADIR_SOURCE}
NADIR_SRC = $${NADIR_PKG}/$${NADIR_SOURCE}
#NADIR_SRC = $${NADIR_PRJ}/$${NADIR_SOURCE}
NADIR_CRD_SRC = $${NADIR_PKG}/$${NADIR_CREDS}/$${NADIR_SOURCE}

# nadir INCLUDEPATH
#
nadir_INCLUDEPATH += \
$${NADIR_SRC} \
$${NADIR_CRD_SRC} \

# nadir DEFINES
#
nadir_DEFINES += \
NO_USE_NADIR_BASE \
NO_USE_XOS_LOGGER_INTERFACE \


########################################################################
# rostra
ROSTRA_NAME = rostra
ROSTRA_SOURCE = source
ROSTRA_CREDS = creds

ROSTRA_PKG = ../../../../..
ROSTRA_BLD = ../..

ROSTRA_PRJ = $${ROSTRA_PKG}
ROSTRA_BIN = $${ROSTRA_BLD}/bin
ROSTRA_LIB = $${ROSTRA_BLD}/lib
ROSTRA_SRC = $${ROSTRA_PKG}/$${ROSTRA_SOURCE}
ROSTRA_CRD_SRC = $${ROSTRA_PKG}/$${ROSTRA_CREDS}/$${ROSTRA_SOURCE}

# rostra BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
rostra_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
rostra_DEFINES += RELEASE_BUILD
}

# rostra INCLUDEPATH
#
rostra_INCLUDEPATH += \
$${ROSTRA_SRC} \
$${ROSTRA_CRD_SRC} \
$${nadir_INCLUDEPATH} \
$${build_rostra_INCLUDEPATH} \

# rostra DEFINES
#
rostra_DEFINES += \
$${nadir_DEFINES} \
$${build_rostra_DEFINES} \

# rostra LIBS
#
rostra_LIBS += \
-L$${ROSTRA_LIB}/lib$${ROSTRA_NAME} \
-l$${ROSTRA_NAME} \
