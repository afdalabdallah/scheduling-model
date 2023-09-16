import numpy as np
import json
import random

def main():
    # Ruangan yang tersedia
    data_ruangan=[
        "101",
        "102",
        "103",
        # "104",
        # "501",
        # "502",
        # "301",
        # "302",
        # "111",
        # "112"
    ]

    # First number means # day of the week
    # The rest is the session of the day
    # Ex. 301 = Wednesday, Session 1
    # Ex. 110 = Monday, Session 10
    # A session means an hour, Session 1 starts from 7.00
    # That means Sesssion 2 is 8.00, Session 3 is 9.00, and so on.
    sesi=[]
    for i in range(1,6):
        for j in range(1,13):
            temp_sesi=""
            if j < 10:
                sesi.append(str(i)+"0"+str(j))
            else:
                sesi.append(str(i)+str(j))

    f = open('api.json')
    data = json.load(f)
    list_perkuliahan = []
    banyak_perkuliahan = len(data['data'])
    random_sesi =[]
    random_ruangan= []

    # Mengambil sesi/ruangan random dari data sesuai dengan 
    # kebutuhan perkuliahan, jika banyak perkuliahan > sesi/ruangan
    # maka ambil semua data sesi/ruangan, jika tidak maka
    # cukup ambil sebanyak perkuliahan yang ada
    if(banyak_perkuliahan > len(data_ruangan)):
        random_ruangan = random.sample(data_ruangan, len(data_ruangan))
    else:
        random_ruangan = random.sample(data_ruangan, banyak_perkuliahan)

    if(banyak_perkuliahan > len (sesi)):
        random_sesi = random.sample(sesi, len(sesi))
    else:
        random_sesi = random.sample(sesi, banyak_perkuliahan)


    # Iteration for sesi and ruangan
    j = 0 # ruangan
    k = 0 # sesi
    for data in data['data']:
        list_perkuliahan.append(data['dosen']+data['mata_kuliah']+data['kelas']+random_ruangan[j]+random_sesi[k])
        j = j + 1
        k = k + 1
        if j >= len(random_ruangan):
            j = 0
        if k >= len(random_sesi):
            k = 0
    
    # list_perkuliahan sudah menjadi Individu
    for i in list_perkuliahan:
        print(i)
    f.close()

main()