function at
    youtube-dl -i -f bestaudio --add-metadata -o '%(title)s.%(ext)s' $argv
    set fname (youtube-dl -i -f bestaudio $argv --get-filename -o '%(title)s.%(ext)s')
    echo $fname
    set fmp3 (youtube-dl $argv --get-filename -o '%(title)s.mp3')
    echo $fmp3
    ffmpeg -i $fname $fmp3
    rm $fname
end
