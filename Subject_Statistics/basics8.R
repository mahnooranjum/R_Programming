# Create variables var1, var2 and var3
var1 <- TRUE
var2 <- 0.3
var3 <- "i"

# var1 is logical; convert it to character: var1_char
var1_char <- as.character(var1)

# See whether var1_char is a character
is.character(var1_char)

# var2 is numeric; convert it to logical: var2_log
var2_log <- as.logical(var2)



# Inspect the class of var2_log
class(var2_log)

# var3 is character; convert it to numeric: var3_num
var3_num <- as.numeric(var3)
