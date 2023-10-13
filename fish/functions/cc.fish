function cc
  cppcheck -I ./ --suppress=missingIncludeSystem --enable=all $argv
end
