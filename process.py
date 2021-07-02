# Opens um-server-01 and sets it to the variable log_file
log_file = open("um-server-01.txt")

# Declares a function with a argument of log_file


def sales_reports(log_file):
    # Itterates through um_server-01.txt
    for line in log_file:
        # Turns the data into an aray
        line = line.rstrip()
        # Creates a shadow copy of the array with the day being specified and setting it to the varible day
        day = line[0:3]
        # Checking to see if day is equal to the string Tue
        if day == "Tue":
            # if it is true print that array
            print(line)


# Invokes the function
sales_reports(log_file)


def over_ten_melons(log_file):
    for line in log_file:
        line = line.rstrip('/n').split(' ')
        melon_count = int(line[2])
        if melon_count > 9:
            print(line)


over_ten_melons(log_file)
