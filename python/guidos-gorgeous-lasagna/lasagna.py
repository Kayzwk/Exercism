EXPECTED_BAKE_TIME = 40

def bake_time_remaining(actual_bake_time):
    """
    Calculate the remaining bake time for the lasagna.

    Args:
        actual_bake_time (int): The number of minutes the lasagna has been baking in the oven.

    Returns:
        int: The number of minutes the lasagna still needs to bake.
    """
    remaining_time = EXPECTED_BAKE_TIME - actual_bake_time
    return max(0, remaining_time)

def preparation_time_in_minutes(number_of_layers):
    """
    Calculate the preparation time for adding layers to the lasagna.

    Args:
        number_of_layers (int): The number of layers to be added to the lasagna.

    Returns:
        int: The total number of minutes required to prepare the specified number of layers.
    """
    return number_of_layers * 2

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """
    Calculate the total elapsed cooking time for the lasagna.

    Args:
        number_of_layers (int): The number of layers added to the lasagna.
        elapsed_bake_time (int): The number of minutes the lasagna has been baking in the oven.

    Returns:
        int: The total number of minutes spent cooking the lasagna.
    """
    prep_time = preparation_time_in_minutes(number_of_layers)
    elapsed_time = prep_time + elapsed_bake_time
    return elapsed_time
