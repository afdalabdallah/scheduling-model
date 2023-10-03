import json

def main():
    f = open('dosen.json')
    dosens = json.load(f)
    f.close()
    f = open('api.json')
    perkuliahans = json.load(f)
    f.close()

    # print(len(dosen))
    # print(len(perkuliahan["data"]))
    defaultPref = {
        "hari": ["Senin", "Selasa", "Rabu", "Kamis", "Jumat"],
        "sesi": ["Sesi 1", "Sesi 2", "Sesi 3", "Sesi 4", "Sesi 5", "Sesi 6", "Sesi 7", "Sesi 8", "Sesi 9", "Sesi 10"]
    }
    flag = 0
    for perkuliahan in perkuliahans["data"]:
        for dosen in dosens:
            if perkuliahan["dosen"] == dosen["kode_dosen"]:
                perkuliahan["preferensi"] = dosen["preferensi"]
                flag = 1
                break
        if flag == 0:
            perkuliahan["preferensi"] = defaultPref
        flag = 0

    
    f = open('test.json', "w")
    f.write(json.dumps(perkuliahans))

main()