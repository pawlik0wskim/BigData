import pandas as pd
import csv
from unidecode import unidecode
from datetime import datetime, timedelta

def filter_line(line):
    return [line[i] for i in range(len(line)) if i not in out_idx]

dates = pd.date_range(datetime.strptime('2019-01-01', '%Y-%m-%d'),
              datetime.strptime('2020-01-01', '%Y-%m-%d')-timedelta(days=1),freq='d')
f = open('/home/vagrant/cpik/pojazdy_14_2022-04-17.csv', 'r', encoding='utf-8')
folder = '/home/vagrant/generated_data/'
header = list(csv.reader([f.readline()]))[0]

idx = 0
# find index of registration date
for i in range(len(header)):
    if header[i] == 'data_rejestracji_ost':
        idx = i
        break
out_cols = ['typ', 'model', 'wariant', 'wersja']
out_idx = [i for i in range(len(header)) if header[i] in out_cols]
 
partitions = {}
header = filter_line(header)
for i in range(len(dates)):
    p = open(folder + 'pojazdy_' + str(dates[i])[0:10] + '.csv', 'w', encoding='utf-8')
    csv.writer(p, lineterminator='\n').writerow(header)
    p.close()
    date = str(dates[i])[0:10]
    partitions[date] = open(folder + 'pojazdy_' + date + '.csv', 'a', encoding='utf-8')

# populate partition files
while True:
    line = f.readline()
    if line == '':
        break
    line = list(csv.reader([line]))[0]    
    if '2019-01-01' <= line[idx] <= '2019-12-31':
        line = [unidecode(line[i]) for i in range(len(line))] 
        csv.writer(partitions[line[idx]], lineterminator='\n').writerow(filter_line(line))

# close everything
f.close()
for p in partitions.values():
    p.close()