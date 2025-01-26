import random


# Shuffle the keys of a dictionary
def shuffle_keys(data):
    lst = list(data.items())
    random.shuffle(lst)
    dct = dict(lst)
    return dct


# Shuffle values in a dictionary (including nested dicts/lists)
def shuffle_values(data):
    dct = {}

    for section, value in data.items():
        if type(value) == list:
            # Shuffle list values
            shuffled_lst = random.sample(value, len(value))
            dct[section] = shuffled_lst
        else:
            # Shuffle nested dictionary values
            inner_dct = {}
            for category, value in value.items():
                shuffled_lst = random.sample(value, len(value))
                inner_dct[category] = shuffled_lst

            shuffled_inner_dct = shuffle_keys(inner_dct)
            dct[section] = shuffled_inner_dct

    return dct


# Write dictionary data to a file with section and category formatting
def write_to_file(data, file):
    section_num = 1

    for section, value in data.items():
        if type(value) == list:
            # Add a blank line between sections
            if section_num > 1:
                file.write("\n")
            file.write(f"{section_num}. {section}" + "\n")
            for row in value:
                file.write(str(row) + "\n")
        else:
            # Add a blank line between sections
            if section_num > 1:
                file.write("\n")
            file.write(f"{section_num}. {section}" + "\n")
            category_num = 1
            for category, values in value.items():
                file.write("\n")
                file.write(f"{section_num}.{category_num}. {category}" + "\n")
                for row in values:
                    file.write(str(row) + "\n")

                category_num += 1

        section_num += 1
