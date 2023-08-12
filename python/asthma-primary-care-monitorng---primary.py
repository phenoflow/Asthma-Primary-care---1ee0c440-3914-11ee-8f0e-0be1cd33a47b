# Luke Daines, Ann Morgan, Mome Mukherjee, Mohammad Al Sallakh, Eimear O'Rourke, Jennifer K Quint, 2023.

import sys, csv, re

codes = [{"code":"9OJ1.","system":"ctv3"},{"code":"9OJ3.","system":"ctv3"},{"code":"9OJ4.","system":"ctv3"},{"code":"9OJ5.","system":"ctv3"},{"code":"9OJ6.","system":"ctv3"},{"code":"9OJ9.","system":"ctv3"},{"code":"XE2Nb","system":"ctv3"},{"code":"XaBU2","system":"ctv3"},{"code":"XaBU3","system":"ctv3"},{"code":"XaIRN","system":"ctv3"},{"code":"XaIu5","system":"ctv3"},{"code":"XaIu6","system":"ctv3"},{"code":"9OJ1.","system":"ctv3"},{"code":"9OJ3.","system":"ctv3"},{"code":"9OJ4.","system":"ctv3"},{"code":"9OJ5.","system":"ctv3"},{"code":"9OJ6.","system":"ctv3"},{"code":"9OJ9.","system":"ctv3"},{"code":"XE2Nb","system":"ctv3"},{"code":"XaBU2","system":"ctv3"},{"code":"XaBU3","system":"ctv3"},{"code":"XaIRN","system":"ctv3"},{"code":"XaIu5","system":"ctv3"},{"code":"XaIu6","system":"ctv3"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('asthma-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["asthma-primary-care-monitorng---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["asthma-primary-care-monitorng---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["asthma-primary-care-monitorng---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)