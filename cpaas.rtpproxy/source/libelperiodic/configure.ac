AC_INIT(libelperiodic, 1.0, sobomax@sippysoft.com)

AM_INIT_AUTOMAKE
AM_MAINTAINER_MODE([disable])

LT_INIT

AC_PROG_CC
AC_PROG_RANLIB

AC_CHECK_FUNC(clock_gettime, [], [
  AC_CHECK_LIB(rt, clock_gettime, RT_LIB="-lrt",
    AC_MSG_ERROR(Unable to find clock_gettime function; required by ocount))])
AC_SUBST(RT_LIB)

AC_OUTPUT(Makefile src/Makefile)
