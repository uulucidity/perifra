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
#   File: rpgpiod.pro
#
# Author: $author$
#   Date: 5/22/2025
#
# os specific QtCreator project .pro file for framework perifra executable rpgpiod
########################################################################
# Depends: rostra;nadir;fila;crono;versa;cifra;rete;stara;argo;libjson
#
# Debug: perifra/build/os/QtCreator/Debug/bin/rpgpiod
# Release: perifra/build/os/QtCreator/Release/bin/rpgpiod
# Profile: perifra/build/os/QtCreator/Profile/bin/rpgpiod
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/rpgpiod/rpgpiod.pri)

TARGET = $${rpgpiod_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${rpgpiod_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${rpgpiod_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${rpgpiod_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${rpgpiod_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${rpgpiod_HEADERS} \
$${rpgpiod_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${rpgpiod_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${rpgpiod_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${rpgpiod_LIBS} \
$${FRAMEWORKS} \

########################################################################
