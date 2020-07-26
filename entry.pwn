/**
    File Name: entry.pwn
    Author: matias
    Description: A template/boilerplate for a library's entry point
    Additional comments: A library's entry point here refers to the .pwn file responsible for generating the .amx module
                         Some define's here are used to demonstrate their purpose, but use sampctl for passing these through
 */

// On sampctl, you'd want to pass these on a per-library basis
// Note: you only define those libraries you are providing
#define VEHICLE_MASTER

#if !defined VEHICLE_MASTER
    #error "You must define the vehicle library as master for the module via VEHICLE_MASTER"
#endif

#define FILTERSCRIPT // Through sampctl

#include <a_samp>
#undef MAX_PLAYERS

// On sampctl, you'd pass in values of DEV_PLAYERCOUNT, PROD_PLAYERCOUNT, and DEVELOPMENT (if appropriate);
// if-else should remain as is
#define DEV_PLAYERCOUNT     5
#define PROD_PLAYERCOUNT    200
#if defined DEVELOPMENT
    #define MAX_PLAYERS DEV_PLAYERCOUNT
#else
    #define MAX_PLAYERS PROD_PLAYERCOUNT
#endif

// External includes
#include <YSI_Core\y_master>

// Library stubs
// Note: paths are adjusted to fit when built from dev perspective vs server
#if defined DEVELOPMENT
    #include "vehicle.inc"
    #include "shared/stubs/admin.inc"
    #include "shared/stubs/jobs.inc"
#else
    #include "vehicle.inc"
    #include "../shared/stubs/admin.inc"
    #include "../shared/stubs/jobs.inc"
#endif