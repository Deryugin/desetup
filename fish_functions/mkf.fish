function mkf
	make $argv; and sudo cp ./build/base/bin/embox.bin /srv/tftp/;
	echo "embox.bin copied to ftp directory"
	echo "disasm.."
	make disasm -s
end
