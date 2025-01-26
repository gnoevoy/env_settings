from functions import shuffle_keys, shuffle_values, write_to_file
from data import data


dct = shuffle_values(data)
shuffled_dct = shuffle_keys(dct)

# Define the path to the output file on the desktop
windows_desktop_path = "/mnt/c/Users/gnoev/OneDrive/Рабочий стол/vim-commands.txt"

# Write the shuffled data to the file
with open(windows_desktop_path, "w") as f:
    write_to_file(shuffled_dct, f)
