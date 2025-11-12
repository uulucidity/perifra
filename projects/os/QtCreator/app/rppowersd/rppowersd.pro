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
#   File: rppowersd.pro
#
# Author: $author$
#   Date: 7/5/2025
#
# os specific QtCreator project .pro file for framework perifra executable rppowersd
########################################################################
# Depends: rostra;nadir;fila;crono;versa;cifra;bn;mp;rete;stara;talas;argo;libjson
#
# Debug: perifra/build/os/QtCreator/Debug/bin/rppowersd
# Release: perifra/build/os/QtCreator/Release/bin/rppowersd
# Profile: perifra/build/os/QtCreator/Profile/bin/rppowersd
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/rppowersd/rppowersd.pri)

TARGET = $${rppowersd_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${rppowersd_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${rppowersd_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${rppowersd_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${rppowersd_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${rppowersd_HEADERS} \
$${rppowersd_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${rppowersd_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${rppowersd_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${rppowersd_LIBS} \
$${FRAMEWORKS} \

########################################################################

