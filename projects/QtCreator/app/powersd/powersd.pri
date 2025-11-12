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
#   File: powersd.pri
#
# Author: $author$
#   Date: 7/5/2025
#
# generic QtCreator project .pri file for framework perifra executable powersd
########################################################################

########################################################################
# powersd

# powersd TARGET
#
powersd_TARGET = powersd

# powersd INCLUDEPATH
#
powersd_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# powersd DEFINES
#
powersd_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# powersd OBJECTIVE_HEADERS
#
#powersd_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/powersd/main.hh \

# powersd OBJECTIVE_SOURCES
#
#powersd_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/powersd/main.mm \

########################################################################
# powersd HEADERS
#
powersd_HEADERS += \
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
$${RETE_SRC}/xos/app/console/network/base/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/base/main.hpp \
$${RETE_SRC}/xos/app/console/network/client/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/client/main.hpp \
$${RETE_SRC}/xos/app/console/network/server/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/server/main.hpp \
\
$${RETE_SRC}/xos/app/console/network/sockets/base/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/base/main.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/client/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/client/main.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/server/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/server/main.hpp \
\
$${RETE_SRC}/xos/app/console/network/sockets/protocol/crlf/base/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/protocol/crlf/base/main.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/protocol/crlf/client/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/protocol/crlf/client/main.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/protocol/crlf/server/main_opt.hpp \
$${RETE_SRC}/xos/app/console/network/sockets/protocol/crlf/server/main.hpp \
\
$${PERIFRA_SRC}/xos/gpio/implement.hpp \
$${PERIFRA_SRC}/xos/gpio/extend.hpp \
$${PERIFRA_SRC}/xos/gpio/os/os.hpp \
$${PERIFRA_SRC}/xos/gpio/posix/gpio.hpp \
$${PERIFRA_SRC}/xos/gpio/apple/osx/gpio.hpp \
$${PERIFRA_SRC}/xos/gpio/os/gpio.hpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/perifra/control/gpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/server/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/gpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/power/control/gpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/server/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/server/main.hpp \

# powersd SOURCES
#
powersd_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/server/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/power/control/gpio/sttp/server/main.cpp \

########################################################################
# powersd FRAMEWORKS
#
powersd_FRAMEWORKS += \
$${perifra_talas_FRAMEWORKS} \

# powersd LIBS
#
powersd_LIBS += \
$${perifra_talas_LIBS} \

########################################################################
# NO Qt
QT -= gui core

