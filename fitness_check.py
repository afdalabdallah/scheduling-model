import random

def skpbConstrain(gen, list_skpb):
    pnow = 0
    for i in range(len(list_skpb)):
        # Fourth Constraint: Sesi SKPB dan jurusan minimal 1 jam
        if gen[2:4] == "SK":
            if abs(int(gen[12:15]) - int(list_skpb[i][12:15])) < 2:
                pnow = pnow + 1
                print("P: " + gen )
    return pnow

dosenPrefrensiDict = {'SD': ['101', '102', '103', '201', '202', '203', '301', '302', '303'], 'RA': ['101', '102', '103', '201', '202', '203', '301', '302', '303'], 'AM': ['301', '302', '303']}
def prefrensiConstraint(gen):
    qnow = 0
    print(gen)
    if gen[12:15] not in dosenPrefrensiDict[gen[0:2]]:
        qnow = qnow + 1
    return qnow
def main():
    data_ruangan=[
        "101",
        "102",
        "103",
        "104",
        "501",
        "502",
        "106",
        "108",
        "301",
        "302",
    ]


# First number means # day of the week
# The rest is the session of the day
# Ex. 301 = Wednesday, Session 1
# Ex. 110 = Monday, Session 10
# A session means an hour, Session 1 starts from 7.00
# That means Sesssion 2 is 8.00, Session 3 is 9.00, and so on.
    sesi=[]
    for i in range(1,6):
        for j in range(1,10):
            temp_sesi=""
            if j < 10:
                sesi.append(str(i)+"0"+str(j))
            else:
                sesi.append(str(i)+str(j))
    individu = ['SDIF4201A101101', 'RAIF4201A111201', 'RAIF4201I302301', 'AMIF4201B101401']
    
    list_skpb =  ['SFSK9999A999101', 'SFSK9999B999103', 'SWSK9998A998107', 'SISK9997A997201', 'SMSK9996A996203', 'SSSK9995A999207', 'SMSK9996B996209', 'SKSK9994A994209', 'SFSK9999C999301', 'SFSK9999D999303', 'SWSK9998B998305', 'SSSK9995B995307', 'SMSK9996C996403', 'SKSK9994B994405', 'SISK9997B997501', 'SNSK9993A993503', 'SNSK9993B993504']
    x = 0
    y = 0
    z = 0 
    p = 0
    q=0
    sesi_tesisa = []
    kemungkinan_sesi = []
    print("Banyak individu ", len(individu))
    for i in range(len(sesi)):
        for j in range(len(data_ruangan)):
            kemungkinan_sesi.append(data_ruangan[j] + sesi[i])

    print("Kemungkinan sesi ", len(kemungkinan_sesi))    
    for i in range(len(individu)):
        cnt_day = 0
        # if individu[i][9:15] 
        for j in range(i+1,len(individu)):
            if individu[i][0:9] != individu[j][0:9]:
                # First constraint: Dosen yang sama tidak bisa mengajar 2 MK di waktu yang sama
                if individu[i][0:2] == individu[j][0:2]: # Sama dosen
                    if abs(int(individu[i][12:15]) - int(individu[j][12:15])) < 2: # Sama hari sesi
                        x = x + 1
                        print("X: " + individu[i] + " " + individu[j] ,int(individu[i][12:15]) , int(individu[j][12:15]))
                # Second constraint: Ruangan yang sama tidak dapat dipakai di waktu yang sama
                if individu[i][9:12] == individu[j][9:12]: # Sama ruangan
                    if abs(int(individu[i][12:15]) - int(individu[j][12:15])) < 2: # Sama hari sesi
                        y = y + 1
                        print("Y: " + individu[i] + " " + individu[j] ,int(individu[i][12:15]) , int(individu[j][12:15]))
                
                # Third constraint: Satu dosen maksimal mengajar 2x sehari
                if individu[i][0:2] == individu[j][0:2]: # Sama dosen
                    if individu[i][12] == individu[j][12]: # Sama hari
                        cnt_day = cnt_day + 1
                        # print("Z: " + individu[i] + " " + individu[j] ,int(individu[i][12]) , int(individu[j][12]))
                if cnt_day > 2:
                    cnt_day = cnt_day - 2
                    z = z + cnt_day
                
        p = p + skpbConstrain(individu[i], list_skpb)
        q = q + prefrensiConstraint(individu[i])
    

    # print("Kemungkinan sesi:\n", kemungkinan_sesi[:len(individu)])
    isincounter = 0
    for i in range(len(kemungkinan_sesi)):
        isincounter = 0
        for j in range(len(individu)):
            if individu[j][9:15] == kemungkinan_sesi[i]:
                isincounter = isincounter + 1
        for j in range(len(list_skpb)):
            if list_skpb[j][9:15] == kemungkinan_sesi[i] :
                isincounter = isincounter + 1
        if isincounter == 0:
            sesi_tesisa.append(kemungkinan_sesi[i])
        
    # sesi_ambil = random.sample(sesi_tesisa, len(individu))
    print (x,y,z,p,q)
    total = x + y +z + p + q
    print("Banyak sesi tersisa: ",len(sesi_tesisa))
    # print ("Sesi tersisa\n", sesi_tesisa)

main()