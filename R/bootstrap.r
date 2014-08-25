adjusted_r_squared_change <- function(data, dv, ivs1, ivs2) {
    fit_facets <- regression(dv, ivs2, data)
    ars_facets <- summary(fit_facets)$adj.r.squared
    fit_factors <- regression(dv, ivs1, data)
    ars_factors <- summary(fit_factors)$adj.r.squared
    ars_facets - ars_factors
    # c(ars_facets, ars_factors, ars_facets - ars_factors)
}



double_adjusted_r_squared_change <- function(data, dv, ivs1, ivs2, method='ezekiel') {
    fit1 <- regression(dv, ivs1, data)
    adj_r_squared_boot_correction1 <- adjusted_r_squared(summary(fit1)$r.squared, 
                                                                 nrow(data), length(ivs1), method=method)
    adj_r_squared_sample_correction1 <- adjusted_r_squared(adj_r_squared_boot_correction1, 
                                                                   nrow(data), length(ivs1), method=method)
    
    fit2 <- regression(dv, ivs2, data)
    adj_r_squared_boot_correction2 <- adjusted_r_squared(summary(fit2)$r.squared, 
                                                                 nrow(data), length(ivs2))        
    adj_r_squared_sample_correction2 <- adjusted_r_squared(adj_r_squared_boot_correction2, 
                                                                   nrow(data), length(ivs2))
    
    adj_r_squared_sample_correction2 - adj_r_squared_sample_correction1
}


