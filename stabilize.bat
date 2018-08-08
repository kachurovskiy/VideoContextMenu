set i=%~n1
set x=%~x1
set t=transforms_%i%.trf
ffmpeg -i %i%%x% -vf vidstabdetect=shakiness=10:accuracy=15:result=%t% -f null -
ffmpeg -i %i%%x% -vf vidstabtransform=zoom=5:smoothing=30:input=%t% -vcodec libx264 -preset slow -tune film -crf 20 -acodec copy %i%_stabilized.MP4
del %t%
exit
