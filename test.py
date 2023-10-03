def main():
    preferensiObj = {
        "hari": ["Senin", "Selasa", "Rabu", "Kamis", "Jumat"],
        "sesi": ["Sesi 5", "Sesi 6", "Sesi 7", "Sesi 8", "Sesi 9", "Sesi 10"]
      }
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
    # print(preferensiObj)
    for hari in preferensiObj["hari"]:
        tempSesi = tempSesi + hariDict[hari]
        for sesi in preferensiObj["sesi"]:
            listPrefrensi.append(tempSesi + sesiDict[sesi])
        tempSesi = ""
    print(listPrefrensi)
main()