footsize_format <- function(data) {
    require(dplyr)
    # data(foot_size_ref)
    data(women_footsize_reference)
    df <- data %>% select(user.id, 
                          birth_gender = birth_gender.label,
                          shoe_size = shoe_size.value, 
                          shoe_type = size_type.label)
    
    df <- inner_join(df, women_footsize_ref, by = "shoe_size")
    
    df <- df %>% select(user.id, 
                        birth_gender,
                        shoe_size, 
                        shoe_type, 
                        foot_inches = women_inches) 
    
    df$foot_inches[which(df$shoe_type == "Mens")] <- df$foot_inches[which(df$shoe_type == "Mens")] + 0.5
    data <- df
    return(data)
}