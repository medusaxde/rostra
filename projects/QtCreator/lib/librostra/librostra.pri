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
#   File: librostra.pri
#
# Author: $author$
#   Date: 3/4/2023
#
# generic QtCreator project file for framework rostra static library librostra
########################################################################

########################################################################
# librostra
XOS_LIB_ROSTRA_VERSION_BUILD_DATE = 3/4/2023 #$$system(~/bin/utility/tdate)

# librostra TARGET
#
librostra_TARGET = rostra
librostra_TEMPLATE = lib
librostra_CONFIG += staticlib

# librostra INCLUDEPATH
#
librostra_INCLUDEPATH += \
$${rostra_INCLUDEPATH} \

# librostra DEFINES
#
librostra_DEFINES += \
$${rostra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_LIB_ROSTRA_VERSION_BUILD_DATE=$${XOS_LIB_ROSTRA_VERSION_BUILD_DATE} \

########################################################################
# librostra OBJECTIVE_HEADERS
#
#librostra_OBJECTIVE_HEADERS += \
#$${ROSTRA_SRC}/xos/lib/rostra/version.hh \

# librostra OBJECTIVE_SOURCES
#
#librostra_OBJECTIVE_SOURCES += \
#$${ROSTRA_SRC}/xos/lib/rostra/version.mm \

########################################################################
# librostra HEADERS
#
librostra_HEADERS += \
$${ROSTRA_SRC}/xos/platform/platform.hpp \
$${ROSTRA_SRC}/xos/lib/rostra/version.hpp \

# librostra SOURCES
#
librostra_SOURCES += \
$${ROSTRA_SRC}/xos/platform/platform.cpp \
$${ROSTRA_SRC}/xos/lib/rostra/version.cpp \

########################################################################
