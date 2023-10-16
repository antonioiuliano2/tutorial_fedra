import ROOT
import fedrarootlogon

ali = ROOT.EdbPVRec()
scancond = ROOT.EdbScanCond()
ali.SetScanCond(scancond)



test = ROOT.EdbTrackP()
seg = ROOT.EdbSegP()
seg.SetX(100)
seg.SetY(100)
seg.SetZ(100)
seg.SetDZ(300)
seg.SetTX(0.1)
seg.SetTY(0.1)
seg.SetW(90) #used for width
test.AddSegment(seg)
#test.AddSegmentF(seg)

seg2 = ROOT.EdbSegP()
seg2.SetX(100+1400.*0.1)
seg2.SetY(100+1400.*0.1)
seg2.SetZ(1500)
seg2.SetDZ(300)
seg2.SetTX(0.1)
seg2.SetTY(0.1)
seg2.SetW(90) #used for width
test.AddSegment(seg2)
#test.AddSegmentF(seg2)

prova = ROOT.TObjArray()
prova.Add(test)

#EDA display

ali.eTracks = prova
eda = ROOT.EdbEDA(ali)

