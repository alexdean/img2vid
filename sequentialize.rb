#!/usr/bin/env ruby

# take a directory full of image files
# sort in lexographical order and make symlinks in the pattern
# expected by img2vid.sh

require 'fileutils'

if ARGV[0].nil?
  puts "Usage: #{__FILE__} /home/alex/pics/directory_full_of_images"
  exit
end

dir = ARGV[0]

idx = 0
Dir["#{dir}/*"].each do |i|
  next if ! File.file?(i)

  ext = File.basename(i).split('.').last
  FileUtils.ln_s "#{i}", "#{dir}/#{idx.to_s.rjust(3,'0')}.#{ext}"
  idx += 1
end
