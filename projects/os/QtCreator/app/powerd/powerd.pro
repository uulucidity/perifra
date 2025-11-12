########################################################################
# Copyright (c) 1988-2025 $organization$
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
#   File: powerd.pro
#
# Author: $author$
#   Date: 5/23/2025
#
# os specific QtCreator project .pro file for framework perifra executable powerd
########################################################################
# Depends: rostra;nadir;fila;crono;versa;cifra;rete;stara;argo;libjson
#
# Debug: perifra/build/os/QtCreator/Debug/bin/powerd
# Release: perifra/build/os/QtCreator/Release/bin/powerd
# Profile: perifra/build/os/QtCreator/Profile/bin/powerd
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/powerd/powerd.pri)

TARGET = $${powerd_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${powerd_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${powerd_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${powerd_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${powerd_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${powerd_HEADERS} \
$${powerd_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${powerd_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${powerd_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${powerd_LIBS} \
$${FRAMEWORKS} \

########################################################################
