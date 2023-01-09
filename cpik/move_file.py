import shutil
import os

home_dir = '/home/vagrant/generated_data/'
files = [f for f in os.listdir(home_dir) if os.path.isfile(home_dir + f)]
files.sort()
file_to_move = None
for f in files:
    if '.csv' in f:
        file_to_move = f
        break

if file_to_move is not None:
    shutil.move(home_dir + file_to_move, '/home/vagrant/nifi_data/')