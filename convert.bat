set i=%~n1
set x=%~x1
set o=%i%.mp4
if exist %o% (
  set o=%i%-h264.mp4
)
ffmpeg -i "%i%%x%" -vcodec libx264 -preset slow -acodec aac "%o%"
exit
