/**
    File Name: vehicle.inc
    Author: matias
    Description: Vehicle library's stub
    Additional comments:
 */
 
#if VEHICLE_MASTER
  #define YSIM_S_ENABLE
#else
  #define YSIM_U_ENABLE
#endif

#define MASTER 1
#include <YSI_Core\y_master>

// "forward" the functions here
foreign bool:Vehicle_IsModelValid(const modelid);

#if VEHICLE_MASTER
  // We need the implementation.
  #include "impl\core.inc"
#endif