function rr
        history | grep -a '^\(rg\|grep\)' | head -n1 | tr -d '\n' | begin; cat; echo ' -l'; end | bash -C | dmenu -l 80 -fn Sans-24  | xargs -o vim 
end
