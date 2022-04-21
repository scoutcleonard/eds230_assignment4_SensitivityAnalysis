# Estimating atmospheric conductance - How easily vapor diffuses from veg. surfaces

#' Computes atmospheric conductance 
#' @param h vegetation height (m)
#' @param v wind speed (cm/s)
#' @param kd parameter (0.7)
#' @param ko parameter (0.1)
#' @return c_at atmospheric conductance (units?)

# Function
atm_conductance <- function(h, v, kd = 0.7, ko = 0.1){
  
  #unit conversion of vegetation height
  h = h * 100
  
  # calculate height at which wind speed is measured 
  zm = h + 200
  
  # compute function params and atmospheric conductance 
  zd = kd*h
  zo = ko*h
  c_at <- v/(6.25*((log(zm-zd)^2)/zo))
  
  #return atmospheric conductance
  return(c_at)
}