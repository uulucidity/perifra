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
#   File: powersd.pro
#
# Author: $author$
#   Date: 7/5/2025
#
# os specific QtCreator project .pro file for framework perifra executable powersd
########################################################################
# Depends: rostra;nadir;fila;crono;versa;cifra;bn;mp;rete;stara;talas;argo;libjson
#
# Debug: perifra/build/os/QtCreator/Debug/bin/powersd
# Release: perifra/build/os/QtCreator/Release/bin/powersd
# Profile: perifra/build/os/QtCreator/Profile/bin/powersd
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/powersd/powersd.pri)

TARGET = $${powersd_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${powersd_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${powersd_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${powersd_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${powersd_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${powersd_HEADERS} \
$${powersd_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${powersd_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${powersd_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${powersd_LIBS} \
$${FRAMEWORKS} \

########################################################################

