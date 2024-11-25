include "utils.rgbinc"

section "sample", rom0

InitSample:
    ret 

UpdateSample:
    ret
;instead of export dobule colons can be used as well, eg InitSample::
export InitSample, UpdateSample