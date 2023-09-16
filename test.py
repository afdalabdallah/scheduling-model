def preferensiToSesi( preferensiObj):
    hariDict = {
        "Senin":"1", 
        "Selasa":"2", 
        "Rabu":"3", 
        "Kamis":"4", 
        "Jumat":"5"
        }
    sesiDict = {
        "Sesi 1":"01", 
        "Sesi 2":"02", 
        "Sesi 3":"03", 
        "Sesi 4":"04", 
        "Sesi 5":"05", 
        "Sesi 6":"06", 
        "Sesi 7":"07", 
        "Sesi 8":"08", 
        "Sesi 9":"09", 
        "Sesi 10":"10"
        }
    listPrefrensi = []
    tempSesi = ""
    for hari in preferensiObj['hari']:
        tempSesi = tempSesi + hariDict[hari]
        for sesi in preferensiObj['sesi']:
            listPrefrensi.append(tempSesi + sesiDict[sesi])
        tempSesi = ""


    return listPrefrensi

def main():
   data = {
    "data": [
            {
            "dosen": "SD",
            "mata_kuliah": "IF4201",
            "kelas": "A",
            "ruangan": "",
            "sesi": "",
            "preferensi": {
                "hari": ["Senin", "Selasa", "Rabu"],
                "sesi": ["Sesi 1", "Sesi 2", "Sesi 3"]
            },
            "tipe": "jurusan",
            "rmk": "AJK"
            },
            {
            "dosen": "RA",
            "mata_kuliah": "IF4201",
            "kelas": "A",
            "ruangan": "",
            "sesi": "",
            "preferensi": {
                "hari": ["Senin", "Selasa", "Rabu"],
                "sesi": ["Sesi 1", "Sesi 2", "Sesi 3"]
            },
            "tipe": "jurusan",
            "rmk": "AJK"
            },
            {
            "dosen": "RA",
            "mata_kuliah": "IF4201",
            "kelas": "I",
            "ruangan": "",
            "sesi": "",
            "preferensi": {
                "hari": ["Senin", "Selasa", "Rabu"],
                "sesi": ["Sesi 1", "Sesi 2", "Sesi 3"]
            },
            "tipe": "jurusan",
            "rmk": "AJK"
            }
        ]
    }
   for datas in data["data"]:
       individuSesi = preferensiToSesi(datas['preferensi'])
       print(individuSesi)

main()