# Luke Daines, Ann Morgan, Mome Mukherjee, Mohammad Al Sallakh, Eimear O'Rourke, Jennifer K Quint, 2023.

import sys, csv, re

codes = [{"code":"13066","system":"med"},{"code":"16070","system":"med"},{"code":"3018","system":"med"},{"code":"39478","system":"med"},{"code":"43770","system":"med"},{"code":"4892","system":"med"},{"code":"16070","system":"med"},{"code":"3018","system":"med"},{"code":"39478","system":"med"},{"code":"4892","system":"med"},{"code":"663V1","system":"ctv3"},{"code":"XE0YV","system":"ctv3"},{"code":"XE0YX","system":"ctv3"},{"code":"663V1","system":"ctv3"},{"code":"XE0YV","system":"ctv3"},{"code":"XE0YX","system":"ctv3"},{"code":"13Y4.","system":"readv2"},{"code":"1J70.","system":"readv2"},{"code":"388t.","system":"readv2"},{"code":"663V1","system":"readv2"},{"code":"663W.","system":"readv2"},{"code":"68C3.","system":"readv2"},{"code":"8791.","system":"readv2"},{"code":"9Q21.","system":"readv2"},{"code":"G581.","system":"readv2"},{"code":"G581.11","system":"readv2"},{"code":"H33z0","system":"readv2"},{"code":"H33zz","system":"readv2"},{"code":"H35y7","system":"readv2"},{"code":"TJF7z","system":"readv2"},{"code":"U60F6","system":"readv2"},{"code":"XE0YV","system":"readv2"},{"code":"XE0YX","system":"readv2"},{"code":"663V1","system":"readv2"},{"code":"H33z0","system":"readv2"},{"code":"H33zz","system":"readv2"},{"code":"H35y7","system":"readv2"},{"code":"XE0YV","system":"readv2"},{"code":"XE0YX","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('asthma-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["asthma-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["asthma-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["asthma-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
