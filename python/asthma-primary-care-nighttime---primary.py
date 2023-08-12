# Luke Daines, Ann Morgan, Mome Mukherjee, Mohammad Al Sallakh, Eimear O'Rourke, Jennifer K Quint, 2023.

import sys, csv, re

codes = [{"code":"102395","system":"med"},{"code":"102713","system":"med"},{"code":"103612","system":"med"},{"code":"30815","system":"med"},{"code":"31167","system":"med"},{"code":"31225","system":"med"},{"code":"39570","system":"med"},{"code":"102395","system":"med"},{"code":"102713","system":"med"},{"code":"103612","system":"med"},{"code":"30815","system":"med"},{"code":"31167","system":"med"},{"code":"31225","system":"med"},{"code":"39570","system":"med"},{"code":"663N0","system":"ctv3"},{"code":"XaINZ","system":"ctv3"},{"code":"XaINb","system":"ctv3"},{"code":"XaINc","system":"ctv3"},{"code":"XaIoE","system":"ctv3"},{"code":"XaXZm","system":"ctv3"},{"code":"XaXZp","system":"ctv3"},{"code":"XaXZs","system":"ctv3"},{"code":"XaXZu","system":"ctv3"},{"code":"XaY2V","system":"ctv3"},{"code":"663N0","system":"ctv3"},{"code":"XaINZ","system":"ctv3"},{"code":"XaINb","system":"ctv3"},{"code":"XaINc","system":"ctv3"},{"code":"XaIoE","system":"ctv3"},{"code":"XaXZm","system":"ctv3"},{"code":"XaXZp","system":"ctv3"},{"code":"XaXZs","system":"ctv3"},{"code":"XaXZu","system":"ctv3"},{"code":"XaY2V","system":"ctv3"},{"code":"663N0","system":"readv2"},{"code":"663P0","system":"readv2"},{"code":"663P1","system":"readv2"},{"code":"66YP.","system":"readv2"},{"code":"66Yq.","system":"readv2"},{"code":"663N0","system":"readv2"},{"code":"663P0","system":"readv2"},{"code":"663P1","system":"readv2"},{"code":"66YP.","system":"readv2"},{"code":"66Yq.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('asthma-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["asthma-primary-care-nighttime---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["asthma-primary-care-nighttime---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["asthma-primary-care-nighttime---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
