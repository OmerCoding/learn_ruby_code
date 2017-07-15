#write your code here
def ftoc(fdeg)
  cdeg = (fdeg - 32) / (1.8)
  if ((cdeg-cdeg.round).abs >= 0.1)
    return cdeg
  else
    return cdeg.round
  end
end

def ctof(cdeg)
  fdeg = cdeg * 1.8 + 32
  if ((fdeg-fdeg.round).abs >= 0.1)
    return fdeg
  else
    return fdeg.round
  end
end
