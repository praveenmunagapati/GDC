dnl Copyright (C) 2013 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl Unix-specific configuration

AC_DEFUN([DPHOBOS_CONFIGURE_UNIX],[
# Add "linux" module for compatibility even if not Linux
D_EXTRA_OBJS="std/c/linux/linux.o $D_EXTRA_OBJS"
DCFG_UNIX="Unix"
DCFG_POSIX="Posix"
])

dnl usage: DRUNTIME_CONFIGURE_THREADS([thread_model])

AC_DEFUN([DRUNTIME_CONFIGURE_THREADS],
[
case $1 in
    posix)  DCFG_THREAD_MODEL="GNU_Thread_Posix" ;;
    single) DCFG_THREAD_MODEL="GNU_Thread_Single" ;;
    win32)  DCFG_THREAD_MODEL="GNU_Thread_Win32" ;;
    # TODO: These targets need porting.
    aix|dce|lynx|mipssde|rtems|tpf|vxworks)
	    DCFG_THREAD_MODEL="GNU_Thread_Single" ;;
    *)	    as_fn_error "Thread implementation '$1' not recognised" "$LINENO" 5 ;;
esac
AC_SUBST(DCFG_THREAD_MODEL)
])

