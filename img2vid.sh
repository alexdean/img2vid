# convert a directory of still images into a video
# http://www.itforeveryone.co.uk/image-to-video.html

source=$1
target=$2
tmpdir=/tmp/`basename $source`.img2vid

if [ "$#" != "2" ]; then
  echo "usage: img2vid.sh dir vid.mp4"
  echo "ex: ./img2vid.sh /home/alex/pics/some_dir /home/alex/movies/some_vid.mp4"
  exit
fi

if [ -e $tmpdir ]; then
  echo "$tmpdir exists. quitting."
  exit
fi

set -x

# this would interpolate new images between those you already have.

# mkdir $tmpdir
# convert $source/* -delay 2 -morph 5 $tmpdir/%05d.jpg

# -r rate. fps?
ffmpeg -f image2 -r 24 -i $source/%03d.jpg -vcodec libx264 -crf 22 $target

# rm -Rf $tmpdir

