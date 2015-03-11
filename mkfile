<$PLAN9/src/mkhdr

C386="8c 8a 8l"
CALL=$C386 cc

all: bindir 386

bindir:
	mkdir -p bin

386:
	for i in $C386
	do 
		cd $i
		mk install
		cd ..
	done

clean:
	for i in $CALL
	do
		cd $i
		mk clean
		cd ..
	done

nuke: clean
	rm -f bin/*
