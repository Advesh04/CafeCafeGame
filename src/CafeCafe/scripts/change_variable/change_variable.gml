///@description change_variable
///@arg target
///@arg var_name
///@arg value

function change_variable(target, var_name, value) {
    // Check if the target is "global", indicating a global variable change
    if (target == "global") {
        // Use the `variable_global_set` function for global variables
        variable_global_set(var_name, value);
    } else {
        // For instance variables, use the `with` statement to apply changes
        with (target) {
            // Use the `variable_instance_set` function for setting the variable
            variable_instance_set(id, var_name, value);
        }
    }
}
