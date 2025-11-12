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
#   File: perifra.pri
#
# Author: $author$
#   Date: 5/22/2025
#
# generic QtCreator project .pri file for framework perifra executable perifra
########################################################################

########################################################################
# perifra

# perifra_exe TARGET
#
perifra_exe_TARGET = perifra

# perifra_exe INCLUDEPATH
#
perifra_exe_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# perifra_exe DEFINES
#
perifra_exe_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# perifra_exe OBJECTIVE_HEADERS
#
#perifra_exe_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/perifra/main.hh \

# perifra_exe OBJECTIVE_SOURCES
#
#perifra_exe_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/perifra/main.mm \

########################################################################
# perifra_exe HEADERS
#
perifra_exe_HEADERS += \
$${NADIR_SRC}/xos/console/sequence.hpp \
$${NADIR_SRC}/xos/console/out.hpp \
$${NADIR_SRC}/xos/console/output.hpp \
$${NADIR_SRC}/xos/console/input.hpp \
$${NADIR_SRC}/xos/console/error.hpp \
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/main.hpp \
$${NADIR_SRC}/xos/console/getopt/main_opt.hpp \
$${NADIR_SRC}/xos/console/getopt/main.hpp \
\
$${NADIR_SRC}/xos/app/console/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/main.hpp \
$${NADIR_SRC}/xos/app/console/version/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/version/main.hpp \
$${NADIR_SRC}/xos/app/console/output/base/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/output/base/main.hpp \
$${NADIR_SRC}/xos/app/console/input/base/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/input/base/main.hpp \
\
$${VERSA_SRC}/xos/app/console/protocol/base/main_opt.hpp \
$${VERSA_SRC}/xos/app/console/protocol/base/main.hpp \
$${VERSA_SRC}/xos/app/console/protocol/client/main_opt.hpp \
$${VERSA_SRC}/xos/app/console/protocol/client/main.hpp \
$${VERSA_SRC}/xos/app/console/protocol/server/main_opt.hpp \
$${VERSA_SRC}/xos/app/console/protocol/server/main.hpp \
\
$${VERSA_SRC}/xos/app/console/protocol/crlf/base/main_opt.hpp \
$${VERSA_SRC}/xos/app/console/protocol/crlf/base/main.hpp \
$${VERSA_SRC}/xos/app/console/protocol/crlf/client/main_opt.hpp \
$${VERSA_SRC}/xos/app/console/protocol/crlf/client/main.hpp \
$${VERSA_SRC}/xos/app/console/protocol/crlf/server/main_opt.hpp \
$${VERSA_SRC}/xos/app/console/protocol/crlf/server/main.hpp \
\
$${PERIFRA_SRC}/xos/gpio/implement.hpp \
$${PERIFRA_SRC}/xos/gpio/extend.hpp \
$${PERIFRA_SRC}/xos/gpio/os/os.hpp \
$${PERIFRA_SRC}/xos/gpio/posix/gpio.hpp \
$${PERIFRA_SRC}/xos/gpio/apple/osx/gpio.hpp \
$${PERIFRA_SRC}/xos/gpio/os/gpio.hpp \
\
$${PERIFRA_SRC}/xos/app/console/perifra/version/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/perifra/version/main.hpp \
$${PERIFRA_SRC}/xos/app/console/framework/version/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/framework/version/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/gpio/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/gpio/main.hpp \
$${PERIFRA_SRC}/xos/app/console/gpio/onoff/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/gpio/onoff/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/perifra/control/gpio/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/perifra/control/gpio/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/perifra/control/gpio/onoff/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/perifra/control/gpio/onoff/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/onoff/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/onoff/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/onoff/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/onoff/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/onoff/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/onoff/server/main.hpp \

# perifra_exe SOURCES
#
perifra_exe_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/perifra/version/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/perifra/version/main.cpp \

########################################################################
# perifra_exe FRAMEWORKS
#
perifra_exe_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# perifra_exe LIBS
#
perifra_exe_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core
