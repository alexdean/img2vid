Turn a directory of still images into a movie. Great (or adequate) for
stitching stills into a time-lapse movie.

## Usage

```
$ ./img2vid.sh /home/alex/pics/some_dir /home/alex/movies/some_vid.mp4
```

`img2vid.sh` expects image files in the directory to be named like `000.jpg`,
`001.jpg`, `002.jpg`, etc.

If your files don't already have names like this, you can use `sequentialize.rb`
to make symlinks which will work with `img2vid.sh`.

```
$ ./sequentialize.rb /home/alex/pics/some_dir
$ ./img2vid.sh /home/alex/pics/some_dir /home/alex/movies/some_vid.mp4
```

## Caveats

I know almost nothing about ffmpeg. I'm sure there are better ways to do this.
But this script has worked for me, and I figured I'd share. YMMV.
