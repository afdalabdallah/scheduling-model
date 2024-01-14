import json

f = open('split_dataset.json')
perkuliahan = json.load(f)
f.close()
i=0
list_of_dicts = perkuliahan

def split_list_into_chunks(lst, chunk_size):
    res = []
    for i in range(chunk_size):
        if lst[i]["dosen"] != "UG":
            res.append(lst[i])
    for data in lst:
        if data["dosen"] == "UG":
            res.append(data)
    return res

skpb = []
for data in perkuliahan:
    if data["dosen"] == "UG":
        skpb.append(data)

# Split the list into chunks of 30, 60, 90, and the rest
chunk_30 = split_list_into_chunks(list_of_dicts, 5)
chunk_60= split_list_into_chunks(list_of_dicts, 10)
chunk_90 = split_list_into_chunks(list_of_dicts, 15)
chunk_all = split_list_into_chunks(list_of_dicts, len(list_of_dicts))
# The remaining items after 90 (if any)
ruangan = [
    "101",
    "102",
    "103",
    "104",
    "105",
    "501",
    "106",
    "107",
    "108",
    "301",
    "302",
    "111",
    "112",
    # "113",
    # "114",
    # "115",
    # "116",
    # "117",
    # "118",
    # "119",
    # "220",
    # "221",
    # "222",
    # "223",
    # "224",
  ]

def split_ruangan(ruangan, chunk_size):
    res = []
    for i in range(chunk_size):
        res.append(ruangan[i])
    return res

# chunk5 = split_ruangan(ruangan, 10)
# chunk10= split_ruangan(ruangan, 15)
# chunk15 = split_ruangan(ruangan, 20)
# chunk20 = split_ruangan(ruangan, len(ruangan))
unwanted_sesi =  []
new = {
    "chunk_30": {},
    "chunk_60": {},
    "chunk_90":{},
    "chunk_all": {},
}
new["chunk_30"]["data"] = chunk_30
new["chunk_30"]["ruangan"] =ruangan
new["chunk_30"]["unwanted_sesi"] = unwanted_sesi

new["chunk_60"]["data"] = chunk_60
new["chunk_60"]["ruangan"] = ruangan
new["chunk_60"]["unwanted_sesi"] = unwanted_sesi

new["chunk_90"]["data"] = chunk_90
new["chunk_90"]["ruangan"] = ruangan
new["chunk_90"]["unwanted_sesi"] = unwanted_sesi

new["chunk_all"]["data"] = chunk_all
new["chunk_all"]["ruangan"] = ruangan
new["chunk_all"]["unwanted_sesi"] = unwanted_sesi

print(len(skpb))

new_sesi = {
    "chunk":{
        "data": chunk_all,
        "ruangan":ruangan,
        "unwanted_sesi": []
    }
}
# for skpb_class in skpb:
#     for key,value in new.items():
#         print(key, " ", skpb_class)
#         value["data"].extend(skpb_class)

f = open('splitted_sesi.json', "w")
f.write(json.dumps(new_sesi))
f.close()
