//////////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2025 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main.hpp
///
/// Author: $author$
///   Date: 7/3/2025
//////////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_PROTOCOL_POWER_CONTROL_GPIO_SERVER_MAIN_HPP
#define XOS_APP_CONSOLE_PROTOCOL_POWER_CONTROL_GPIO_SERVER_MAIN_HPP

#include "xos/app/console/protocol/power/control/gpio/server/main_opt.hpp"

namespace xos {
namespace app {
namespace console {
namespace protocol {
namespace power {
namespace control {
namespace gpio {
namespace server {

/// class maint
template 
<class TExtends = xos::app::console::protocol::power::control::gpio::server::main_optt<>,  class TImplements = typename TExtends::implements>

class maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };
    typedef typename extends::string_t string_t;
    typedef typename extends::reader_t reader_t;
    typedef typename extends::writer_t writer_t;
    typedef typename extends::file_t file_t;

    typedef typename extends::sequence_char_t sequence_char_t;
    typedef typename extends::char_sequence_t char_sequence_t;
    typedef typename extends::char_seeker_t char_seeker_t;
    typedef typename extends::char_reader_t char_reader_t;
    typedef typename extends::char_writer_t char_writer_t;
    typedef typename extends::reader_string_t reader_string_t;
    typedef typename extends::string_reader_t string_reader_t;

    typedef typename extends::gpio_t gpio_t;

    /// constructor / destructor
    maint()
    : run_(0), 
      mseconds_pin_on_(0), 
      gpio_is_active_low_(false) {
    }
    virtual ~maint() {
    }
private:
    maint(const maint &copy) {
        throw exception(exception_unexpected);
    }

protected:
    typedef typename extends::in_reader_t in_reader_t;
    typedef typename extends::out_writer_t out_writer_t;
    typedef typename extends::err_writer_t err_writer_t;

    //////////////////////////////////////////////////////////////////////////
    /// run
    int (derives::*run_)(int argc, char_t** argv, char_t** env);
    virtual int run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        if ((run_)) {
            LOGGER_IS_LOGGED_INFO("(!(err = (this->*run_)(argc, argv, env)))...");
            if (!(err = (this->*run_)(argc, argv, env))) {
                LOGGER_IS_LOGGED_INFO("...(!(" << err << " = (this->*run_)(argc, argv, env)))");
            } else {
                LOGGER_IS_LOGGED_INFO("...failed on (!(" << err << " = (this->*run_)(argc, argv, env)))");
            }
        } else {
            LOGGER_IS_LOGGED_INFO("(!(err = extends::run(argc, argv, env)))...");
            if (!(err = extends::run(argc, argv, env))) {
                LOGGER_IS_LOGGED_INFO("...(!(" << err << " = extends::run(argc, argv, env)))");
            } else {
                LOGGER_IS_LOGGED_INFO("...failed on (!(err" << err << " = extends::run(argc, argv, env)))");
            }
        }
        return err;
    }

    //////////////////////////////////////////////////////////////////////////
    /// ...get_system_info_run
    virtual int get_system_info_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        const string_t &system_info_response = this->system_info_response();
        is_true = (0 < (system_info_response.length()));
        return err;
    }
    virtual int before_get_system_info_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_get_system_info_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_get_system_info_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_get_system_info_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = get_system_info_run(is_true, argc, argv, env);
            if ((err2 = after_get_system_info_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    /// ...get_power_state_on_run
    virtual int get_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = this->all_gpio_power_state_run(argc, argv, env))) {
            const bool& gpio_is_on = this->gpio_is_on();
            is_true = gpio_is_on;
        } else {
        }
        return err;
    }
    virtual int before_get_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_get_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_get_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_get_power_state_on_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = get_power_state_on_run(is_true, argc, argv, env);
            if ((err2 = after_get_power_state_on_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    /// ...get_power_state_off_run
    virtual int get_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = this->all_gpio_power_state_run(argc, argv, env))) {
            const bool& gpio_is_off = this->gpio_is_off();
            is_true = gpio_is_off;
        } else {
        }
        return err;
    }
    virtual int before_get_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_get_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_get_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_get_power_state_off_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = get_power_state_off_run(is_true, argc, argv, env);
            if ((err2 = after_get_power_state_off_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    /// ...set_power_state_on_run
    virtual int set_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = this->all_gpio_power_on_run(argc, argv, env))) {
            if (!(err = this->all_gpio_power_state_run(argc, argv, env))) {
                const bool& gpio_is_on = this->gpio_is_on();
                is_true = gpio_is_on;
            } else {
            }
        } else {
        }
        return err;
    }
    virtual int before_set_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_set_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_set_power_state_on_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_set_power_state_on_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = set_power_state_on_run(is_true, argc, argv, env);
            if ((err2 = after_set_power_state_on_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    /// ...set_power_state_off_run
    virtual int set_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = this->all_gpio_power_off_run(argc, argv, env))) {
            if (!(err = this->all_gpio_power_state_run(argc, argv, env))) {
                const bool& gpio_is_off = this->gpio_is_off();
                is_true = gpio_is_off;
            } else {
            }
        } else {
        }
        return err;
    }
    virtual int before_set_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_set_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_set_power_state_off_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_set_power_state_off_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = set_power_state_off_run(is_true, argc, argv, env);
            if ((err2 = after_set_power_state_off_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    /// ...set_system_restart_run
    virtual int set_system_restart_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int before_set_system_restart_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_set_system_restart_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_set_system_restart_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_set_system_restart_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = set_system_restart_run(is_true, argc, argv, env);
            if ((err2 = after_set_system_restart_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    /// ...set_system_stop_run
    virtual int set_system_stop_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int before_set_system_stop_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_set_system_stop_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_set_system_stop_run(bool &is_true, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_set_system_stop_run(is_true, argc, argv, env))) {
            int err2 = 0;
            err = set_system_stop_run(is_true, argc, argv, env);
            if ((err2 = after_set_system_stop_run(is_true, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////
    /// ...prepare_response_to_power_on_request_run
    virtual int prepare_response_to_power_on_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_on = false;
        const string_t &power_unknown_response = this->power_unknown_response();

        response.assign(power_unknown_response);
        if (!(err = this->all_set_power_state_on_run(is_on, argc, argv, env))) {
            const string_t &power_on_response = this->power_on_response();

            if ((is_on)) {
                response.assign(power_on_response);
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_power_on_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_power_on_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_power_on_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_power_on_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_power_on_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_power_on_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_power_off_request_run
    virtual int prepare_response_to_power_off_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_off = false;
        const string_t &power_unknown_response = this->power_unknown_response();

        response.assign(power_unknown_response);
        if (!(err = this->all_set_power_state_off_run(is_off, argc, argv, env))) {
            const string_t &power_off_response = this->power_off_response();

            if ((is_off)) {
                response.assign(power_off_response);
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_power_off_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_power_off_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_power_off_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_power_off_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_power_off_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_power_off_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_power_state_request_run
    virtual int prepare_response_to_power_state_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_on = false;
        const string_t &power_unknown_response = this->power_unknown_response();

        response.assign(power_unknown_response);
        if (!(err = this->all_get_power_state_on_run(is_on, argc, argv, env))) {
            const string_t &power_on_response = this->power_on_response();

            if ((is_on)) {
                response.assign(power_on_response);
            } else {
                bool is_off = false;

                if (!(err = this->all_get_power_state_off_run(is_off, argc, argv, env))) {
                    const string_t &power_off_response = this->power_off_response();
        
                    if ((is_off)) {
                        response.assign(power_off_response);
                    }
                } else {
                }
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_power_state_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_power_state_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_power_state_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_power_state_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_power_state_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_power_state_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_system_info_request_run
    virtual int prepare_response_to_system_info_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_true = false;
        const string_t &system_info_unknown_response = this->system_info_unknown_response();

        response.assign(system_info_unknown_response);
        if (!(err = this->all_get_system_info_run(is_true, argc, argv, env))) {
            const string_t &system_info_response = this->system_info_response();

            if ((is_true)) {
                response.assign(system_info_response);
            } else {
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_system_info_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_system_info_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_system_info_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_system_info_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_system_info_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_system_info_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_system_restart_request_run
    virtual int prepare_response_to_system_restart_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_true = false;
        const string_t &system_state_unknown_response = this->system_state_unknown_response();

        response.assign(system_state_unknown_response);
        if (!(err = this->all_set_system_restart_run(is_true, argc, argv, env))) {
            const string_t &system_restart_response = this->system_restart_response();

            if ((is_true)) {
                response.assign(system_restart_response);
            } else {
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_system_restart_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_system_restart_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_system_restart_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_system_restart_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_system_restart_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_system_restart_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_system_start_request_run
    virtual int prepare_response_to_system_start_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_true = false;
        const string_t &system_state_unknown_response = this->system_state_unknown_response();

        response.assign(system_state_unknown_response);
        if (!(err = this->all_set_system_restart_run(is_true, argc, argv, env))) {
            const string_t &system_start_response = this->system_start_response();

            if ((is_true)) {
                response.assign(system_start_response);
            } else {
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_system_start_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_system_start_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_system_start_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_system_start_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_system_start_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_system_start_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_system_stop_request_run
    virtual int prepare_response_to_system_stop_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        bool is_true = false;
        const string_t &system_state_unknown_response = this->system_state_unknown_response();

        response.assign(system_state_unknown_response);
        if (!(err = this->all_set_system_stop_run(is_true, argc, argv, env))) {
            const string_t &system_stop_response = this->system_stop_response();

            if ((is_true)) {
                response.assign(system_stop_response);
            } else {
            }
        } else {
        }
        return err;
    }
    virtual int before_prepare_response_to_system_stop_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_prepare_response_to_system_stop_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int all_prepare_response_to_system_stop_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_system_stop_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_system_stop_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_system_stop_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////
    /// ...prepare_response_to_power_request_run
    virtual int prepare_response_to_power_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0, unequal = 0;
        const string_t &unknown_response = this->unknown_response(),
                       &power_on_request = this->power_on_request(),
                       &power_off_request = this->power_off_request(),
                       &power_state_request = this->power_state_request(),
                       &system_info_request = this->system_info_request(),
                       &system_restart_request = this->system_restart_request(),
                       &system_start_request = this->system_start_request(),
                       &system_stop_request = this->system_stop_request();

        LOGGER_IS_LOGGED_INFO("(!(unequal = power_on_request.compare(request)))...");
        if (!(unequal = power_on_request.compare(request))) {
            LOGGER_IS_LOGGED_INFO("all_prepare_response_to_power_on_request_run(response, request, argc, argv, env)...");
            if (!(err = all_prepare_response_to_power_on_request_run(response, request, argc, argv, env))) {
            } else {
            }
        } else {
            LOGGER_IS_LOGGED_INFO("(!(unequal = power_off_request.compare(request)))...");
            if (!(unequal = power_off_request.compare(request))) {
                LOGGER_IS_LOGGED_INFO("all_prepare_response_to_power_off_request_run(response, request, argc, argv, env)...");
                if (!(err = all_prepare_response_to_power_off_request_run(response, request, argc, argv, env))) {
                } else {
                }
            } else {
                LOGGER_IS_LOGGED_INFO("(!(unequal = power_state_request.compare(request)))...");
                if (!(unequal = power_state_request.compare(request))) {
                    LOGGER_IS_LOGGED_INFO("all_prepare_response_to_power_state_request_run(response, request, argc, argv, env)...");
                    if (!(err = all_prepare_response_to_power_state_request_run(response, request, argc, argv, env))) {
                    } else {
                    }
                } else {
                    LOGGER_IS_LOGGED_INFO("(!(unequal = system_info_request.compare(request)))...");
                    if (!(unequal = system_info_request.compare(request))) {
                        LOGGER_IS_LOGGED_INFO("all_prepare_response_to_system_info_request_run(response, request, argc, argv, env)...");
                        if (!(err = all_prepare_response_to_system_info_request_run(response, request, argc, argv, env))) {
                        } else {
                        }
                    } else {
                        LOGGER_IS_LOGGED_INFO("(!(unequal = system_restart_request.compare(request)))...");
                        if (!(unequal = system_restart_request.compare(request))) {
                            LOGGER_IS_LOGGED_INFO("all_prepare_response_to_system_restart_request_run(response, request, argc, argv, env)...");
                            if (!(err = all_prepare_response_to_system_restart_request_run(response, request, argc, argv, env))) {
                            } else {
                            }
                        } else {
                            LOGGER_IS_LOGGED_INFO("(!(unequal = system_start_request.compare(request)))...");
                            if (!(unequal = system_start_request.compare(request))) {
                                LOGGER_IS_LOGGED_INFO("all_prepare_response_to_system_start_request_run(response, request, argc, argv, env)...");
                                if (!(err = all_prepare_response_to_system_start_request_run(response, request, argc, argv, env))) {
                                } else {
                                }
                            } else {
                                LOGGER_IS_LOGGED_INFO("(!(unequal = system_stop_request.compare(request)))...");
                                if (!(unequal = system_stop_request.compare(request))) {
                                    LOGGER_IS_LOGGED_INFO("all_prepare_response_to_system_stop_request_run(response, request, argc, argv, env)...");
                                    if (!(err = all_prepare_response_to_system_stop_request_run(response, request, argc, argv, env))) {
                                    } else {
                                    }
                                } else {
                                    LOGGER_IS_LOGGED_INFO("...response.assign(unknown_response)");
                                    response.assign(unknown_response);
                                }
                            }
                        }
                    }
                }
            }
        }
        return err;
    }
    virtual int before_prepare_response_to_power_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        LOGGER_IS_LOGGED_INFO("this->gpio_initialize_run(argc, argv, env)...");
        if (!(err = this->gpio_initialize_run(argc, argv, env))) {
            LOGGER_IS_LOGGED_INFO("..." << err << " = this->gpio_initialize_run(argc, argv, env)");
        } else {
            LOGGER_IS_LOGGED_INFO("...failed " << err << " = this->before_gpio_pin_run(argc, argv, env)");
        }
        return err;
    }
    virtual int after_prepare_response_to_power_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        LOGGER_IS_LOGGED_INFO("this->gpio_finalize_run(argc, argv, env)...");
        if (!(err = this->gpio_finalize_run(argc, argv, env))) {
            LOGGER_IS_LOGGED_INFO("..." << err << " = this->gpio_finalize_run(argc, argv, env)");
        } else {
            LOGGER_IS_LOGGED_INFO("...failed " << err << " = this->gpio_finalize_run(argc, argv, env)");
        }
        return err;
    }
    virtual int all_prepare_response_to_power_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = before_prepare_response_to_power_request_run(response, request, argc, argv, env))) {
            int err2 = 0;
            err = prepare_response_to_power_request_run(response, request, argc, argv, env);
            if ((err2 = after_prepare_response_to_power_request_run(response, request, argc, argv, env))) {
                if (!(err)) err = err2;
            }
        }
        return err;
    }
    /// ...prepare_response_to_request...
    virtual int default_prepare_response_to_request_run(string_t& response, const string_t& request, int argc, char_t** argv, char_t** env) {
        int err = 0;
        if (!(err = all_prepare_response_to_power_request_run(response, request, argc, argv, env))) {
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////
    virtual int before_gpio_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int after_gpio_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    //////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////
    /// ...output_gpio_is_on_run
    virtual int output_gpio_is_on_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        const bool& gpio_is_on = this->gpio_is_on();
        const char_t* state = ((gpio_is_on)?(XOS_APP_CONSOLE_GPIO_ONOFF_MAIN_STATE_OPTARG_ON)
                               :(XOS_APP_CONSOLE_GPIO_ONOFF_MAIN_STATE_OPTARG_OFF));

        LOGGER_IS_LOGGED_INFO("...state = \"" << state << "\"");
        return err;
    }
    //////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////
    virtual int on_mseconds_option_set
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if ((optarg) && (optarg[0])) {
            LOGGER_IS_LOGGED_INFO("(!(err = this->unset_output_mseconds_pin_on_run(argc, argv, env)))...");
            if (!(err = this->unset_output_mseconds_pin_on_run(argc, argv, env))) {
                LOGGER_IS_LOGGED_INFO("...(!(" << err << " = this->unset_output_mseconds_pin_on_run(argc, argv, env)))");
                LOGGER_IS_LOGGED_INFO("...(!(err = this->output_mseconds_pin_on_run_unset(argc, argv, env)))");
                if (!(err = this->output_mseconds_pin_on_run_unset(argc, argv, env))) {
                    LOGGER_IS_LOGGED_INFO("...(!(" << err << " = this->output_mseconds_pin_on_run_unset(argc, argv, env)))");
                } else {
                    LOGGER_IS_LOGGED_INFO("...(!(" << err << " = this->output_mseconds_pin_on_run_unset(argc, argv, env)))");
                }
            }
        } else {
            LOGGER_IS_LOGGED_INFO("...failed on (!(" << err << " = this->unset_output_mseconds_pin_on_run(argc, argv, env)))");
        }
        return err;
    }
    //////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////
    virtual mseconds_t& mseconds_pin_on() const {
        return (mseconds_t&)mseconds_pin_on_;
    }
    virtual bool& gpio_is_active_low() const {
        return (bool&)gpio_is_active_low_;
    }
    //////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////
protected:
    mseconds_t mseconds_pin_on_;
    bool gpio_is_active_low_;
}; /// class maint 
typedef maint<> main;

} /// namespace server 
} /// namespace gpio 
} /// namespace control 
} /// namespace power 
} /// namespace protocol 
} /// namespace console 
} /// namespace app 
} /// namespace xos 

#endif /// ndef XOS_APP_CONSOLE_PROTOCOL_POWER_CONTROL_GPIO_SERVER_MAIN_HPP
