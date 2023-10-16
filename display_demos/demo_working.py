import ROOT
import fedrarootlogon


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

dsname="FOOT FEDRA display"
ds = ROOT.EdbDisplay.EdbDisplayExist(dsname)
if not ds:  
  ds=ROOT.EdbDisplay(dsname,-50000.,50000.,-50000.,50000.,-4000.,80000.)

ds.SetArrTr(prova)
ds.SetDrawTracks(4)
ds.Draw()
