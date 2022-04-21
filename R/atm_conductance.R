# Estimating atmospheric conductance - How easily vapor diffuses from veg. surfaces

#' Computes atmospheric conductance 
#' @param zm height where wind speed is measured (cm)
#' @param h vegetation height (cm)
#' @param v wind speed (cm/s)
#' @param kd parameter (0.7)
#' @param ko parameter (0.1)
#' @return c_at atmospheric conductance (units?)

# Function
atm_conductance <- function(zm, h, v, kd = 0.7, ko = 0.1){
  zd = kd*h
  zo = ko*h
  c_at <- vm/(6.25*((ln(zm-zd)^2)/zo))
  return(c_at)
}