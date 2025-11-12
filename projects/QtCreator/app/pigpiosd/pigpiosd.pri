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
#   File: pigpiosd.pri
#
# Author: $author$
#   Date: 7/1/2025
#
# generic QtCreator project .pri file for framework perifra executable pigpiosd
########################################################################

########################################################################
# pigpiosd

# pigpiosd TARGET
#
pigpiosd_TARGET = pigpiosd

# pigpiosd INCLUDEPATH
#
pigpiosd_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# pigpiosd DEFINES
#
pigpiosd_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \
RASPBERRYPIOS \

########################################################################
# pigpiosd OBJECTIVE_HEADERS
#
#pigpiosd_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/pigpiosd/main.hh \

# pigpiosd OBJECTIVE_SOURCES
#
#pigpiosd_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/pigpiosd/main.mm \

########################################################################
# pigpiosd HEADERS
#
pigpiosd_HEADERS += \
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
$${STARA_SRC}/xos/app/console/protocol/ttp/base/main_opt.hpp \
$${STARA_SRC}/xos/app/console/protocol/ttp/base/main.hpp \
$${STARA_SRC}/xos/app/console/protocol/ttp/client/main_opt.hpp \
$${STARA_SRC}/xos/app/console/protocol/ttp/client/main.hpp \
$${STARA_SRC}/xos/app/console/protocol/ttp/server/main_opt.hpp \
$${STARA_SRC}/xos/app/console/protocol/ttp/server/main.hpp \
\
$${STARA_SRC}/xos/app/console/network/sockets/protocol/ttp/base/main_opt.hpp \
$${STARA_SRC}/xos/app/console/network/sockets/protocol/ttp/base/main.hpp \
$${STARA_SRC}/xos/app/console/network/sockets/protocol/ttp/client/main_opt.hpp \
$${STARA_SRC}/xos/app/console/network/sockets/protocol/ttp/client/main.hpp \
$${STARA_SRC}/xos/app/console/network/sockets/protocol/ttp/server/main_opt.hpp \
$${STARA_SRC}/xos/app/console/network/sockets/protocol/ttp/server/main.hpp \
\
$${TALAS_SRC}/xos/app/console/protocol/sttp/base/main_opt.hpp \
$${TALAS_SRC}/xos/app/console/protocol/sttp/base/main.hpp \
$${TALAS_SRC}/xos/app/console/protocol/sttp/client/main_opt.hpp \
$${TALAS_SRC}/xos/app/console/protocol/sttp/client/main.hpp \
$${TALAS_SRC}/xos/app/console/protocol/sttp/server/main_opt.hpp \
$${TALAS_SRC}/xos/app/console/protocol/sttp/server/main.hpp \
\
$${TALAS_SRC}/xos/app/console/network/sockets/protocol/sttp/base/main_opt.hpp \
$${TALAS_SRC}/xos/app/console/network/sockets/protocol/sttp/base/main.hpp \
$${TALAS_SRC}/xos/app/console/network/sockets/protocol/sttp/client/main_opt.hpp \
$${TALAS_SRC}/xos/app/console/network/sockets/protocol/sttp/client/main.hpp \
$${TALAS_SRC}/xos/app/console/network/sockets/protocol/sttp/server/main_opt.hpp \
$${TALAS_SRC}/xos/app/console/network/sockets/protocol/sttp/server/main.hpp \
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
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/sttp/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/sttp/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/sttp/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/sttp/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/sttp/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/gpio/sttp/server/main.hpp \
\
$${PERIFRA_SRC}/xos/platform/os/raspberrypi/raspberrypios/pigpio.h \
$${PERIFRA_SRC}/xos/platform/os/raspberrypi/raspberrypios/pigpio.hpp \
$${PERIFRA_SRC}/xos/gpio/raspberrypi/raspberrypios/pigpio/gpio.hpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/pigpio/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/pigpio/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/pigpio/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/pigpio/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/pigpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/pigpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/server/main.hpp \

# pigpiosd SOURCES
#
pigpiosd_SOURCES += \
$${PERIFRA_SRC}/xos/gpio/implement.cpp \
$${PERIFRA_SRC}/xos/gpio/extend.cpp \
$${PERIFRA_SRC}/xos/gpio/os/os.cpp \
\
$${PERIFRA_SRC}/xos/gpio/raspberrypi/raspberrypios/pigpio/gpio.cpp \
\
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/server/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/network/sockets/protocol/pigpio/sttp/server/main.cpp \

########################################################################
# pigpiosd FRAMEWORKS
#
pigpiosd_FRAMEWORKS += \
$${perifra_pigpios_FRAMEWORKS} \

# pigpiosd LIBS
#
pigpiosd_LIBS += \
$${perifra_pigpios_LIBS} \

########################################################################
# NO Qt
QT -= gui core

