#!/usr/bin/python3

import csv

MY_FILE ="sample_sfpd_incident_all.csv"

def parse (raw_file, delimiter):
    """Parsed a raw CSV file to JSON line object."""

    with open(raw_file) as opened_file:
        csv_data = csv.reader(opened_file, delimiter=delimiter)
        parsed_data = []
        fields = csv_data.next()
        
        for row in csv_data:
            parsed_data.append(dict(zip(fields, row)))


    return parsed_data

print(parse(MY_FILE, ","))
