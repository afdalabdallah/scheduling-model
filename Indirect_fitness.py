def individuConstrain( individu):
        x = 0 # First to third constraint
        y = 0
        z = 0
        p = 0 # fourth constraint
        q = 0 # prefrensi
        timeslot = len(individu[0])
        ruangan = len(individu)
        # print(timeslot, ruangan)
        for time in range(timeslot):
            count_same_dosen = {}
            for room in range (ruangan):
                activity = individu[room][time]
                if(activity != ''):
                    dosen = activity[0:2]
                    count_same_dosen[dosen] =  count_same_dosen.get(dosen, 0) + 1
            duplicate_in_timeslot = sum(count-1 for count in count_same_dosen.values() if count > 1 )
            for key in count_same_dosen:
                 if count_same_dosen[key] > 1:
                      print(key)
            x = x + duplicate_in_timeslot
        return x

def secondConstraint( individu):
        x = 0 # First to third constraint
        y = 0
        z = 0
        p = 0 # fourth constraint
        q = 0 # prefrensi
        timeslot = len(individu[0])
        ruangan = len(individu)
        for room in range(ruangan):
            count_dosen_mengajar = {}
            for time in range(timeslot):
                activity = individu[room][time]
                dosen = activity[0:2]
                # Per 10 sesi di 1 hari
                if(time % 10 == 0 and time != 0):
                    double_dosen_mengajar = sum(count-1 for count in count_dosen_mengajar.values() if count > 2 )
                    y = y + double_dosen_mengajar
                    count_dosen_mengajar = {}
                count_dosen_mengajar[dosen] = count_dosen_mengajar.get(dosen,0) + 1

def main():
     individu = [['MKIF4404I', '', 'WSIF4201E', '', '', '', '', '', '', 'ASIF4405C', '', '', '', '', '', '', '', '', 'WSIF4201D', '', 'VHIF4604B', '', '', 'HSIF4945A', 'IMTI4411A', 'KRIF4404C', '', '', '', '', '', 'UYIF4603D', '', '', '', 'TAIF4201G', '', '', 'SAIF4502A', '', '', 'DHIF4403F', 'SCIF4404D', '', ''], 
['', '', '', '', '', '', '', '', '', 'BAIF4405D', '', '', 'AWIF4604E', '', '', '', '', '', 'ISIF4401H', '', '', '', '', '', '', '', '', '', '', '', 'ARIF4202E', 'BHIF4602I', 'HSIF4602D', '', '', '', '', '', 'AMIF4402D', 'ABIF4401E', 'SRIF4406E', '', '', '', ''], ['IMTI4411A', '', '', '', '', '', '', '', '', 'ABIF4502I', '', '', '', '', '', 'MNIF4966A', '', '', '', '', 'BAIF4405F', 'VHIF4304A', '', '', '', '', '', 'DZIF4604I', '', '', '', '', 'UYIF4603E', '', 'RNIF4603B', '', '', '', '', 'FBIF4406A', '', 'DSIF4202G', '', 'FBIF4605B', 'DPIF4202C'], ['', '', '', 'RAIF4947A', '', '', '', 'RJIF4605E', 'DAIF4986A', '', '', '', '', 'WSIF4201C', '', '', 'JLIF4405I', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IMIF4933A', '', 'ABTI4411I', '', '', '', 'SAIF4934A', 'SAIF4603C', '', '', '', 'MNIF4605I', '', '', ''], ['', '', '', '', '', '', '', 'ASIF4922A', 'FBIF4406B', '', 'ISIF4504I', '', '', '', '', 'RAIF4201I', '', '', '', '', '', '', '', '', '', '', '', '', 'OJIF4946A', '', '', '', '', '', '', '', '', '', '', '', '', 'ISIF4401G', 'RLIF4401C', 'MNIF4404B', ''], ['', '', 'IMIF4985A', '', '', 'ALIF4603A', '', '', '', 'BJIF4602C', '', '', 'BMIF4402I', '', '', '', 'RRIF4963A', '', '', 'ALIF4964F', '', '', '', '', '', '', 'RNIF4603C', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'RLIF4902A', '', '', 'RMIF4602B'], ['', '', '', '', '', 'MRIF4903A', '', '', '', '', '', '', 'YPIF4101A', '', '', '', 'BSIF4913A', 'SCIF4403I', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SAIF4604D', '', '', 'AWIF4405A', '', '', '', '', ''], ['', '', '', '', '', '', '', 'RNIF4404E', '', '', '', '', '', '', '', '', '', '', 'VHIF4604C', 'RLIF4982A', '', '', 'TAIF4201F', '', '', '', 'SRIF4406F', '', 'DAIF4403B', '', '', '', 'DZIF4304I', '', '', '', 'ABIF4605I', '', '', 'YPIF4202B', '', '', '', '', ''], ['', '', '', '', '', '', '', '', '', '', '', '', 'RJIF4605D', 'HBIF4402E', '', '', '', 'HBIF4402F', 'CFIF4958A', '', '', 'VHIF4604A', '', '', '', '', '', '', '', '', '', 'ALIF4406I', 'DAIF4403A', '', '', '', '', '', '', '', '', 'AMIF4402C', '', 'BSIF4701A', 'DPIF4957A'], ['KRTI4411A', '', 'DSIF4202F', '', '', '', '', '', '', '', '', '', '', 'BAIF4405E', '', '', 'RMIF4602A', '', '', '', '', '', '', '', '', 
'', 'FBIF4605A', '', 'RJIF4971A', 'JLIF4921A', '', '', '', 'BJIF4402B', '', '', '', '', '', '', '', '', '', '', 'MNIF4605C'], ['', '', 'NSIF4403C', '', 'AWIF4405B', '', '', '', '', '', '', '', '', '', 'DOIF4603F', 'MMIF4914A', '', '', '', '', '', 'RNIF4603I', '', '', '', 'HFIF4601A', '', '', '', '', '', '', 'FBIF4504A', '', '', '', 'MLIF4101A', '', 'ABIF4401I', '', '', '', '', 'STIF4406D', ''], ['', '', '', '', '', '', 'SCTI4411B', '', '', '', '', '', '', '', 'RAIF4201A', 'DHIF4935A', '', 'AYIF4403D', '', '', '', '', 'ARIF4202D', '', '', 'ABIF4401D', '', '', '', '', '', '', '', '', 'STIF4972A', 'DSIF4404A', 'RLIF4401B', '', '', '', '', '', '', '', ''], ['', '', 'HFIF4602B', '', '', '', '', '', '', '', '', '', 'HTIF4952A', '', '', '', '', '', '', '', '', '', 'CFIF4403E', 'ISIF4401F', '', '', '', '', '', '', 'ALIF4406C', '', '', '', '', '', 'SDIF4201A', '', '', '', '', 'BSIF4701I', '', '', '']]
     x =individuConstrain(individu)
     y = secondConstraint(individu)
     print(x,y)

main()