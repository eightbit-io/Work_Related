"""Format csv as prettytable"""

from prettytable import from_csv, MSWORD_FRIENDLY


with open("z:/IEHE.csv") as file:
    TABLE = from_csv(file)

# print(TABLE)
print(TABLE.get_string(fields=["Material Group", "JDE code", "Order"]))
