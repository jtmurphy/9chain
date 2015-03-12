<$PLAN9/src/mkhdr

C386="8c 8a 8l"
CARM="5c 5a 5l"
CALL=$C386 $CARM cc

all:Q: 386 arm
	date

bindir:
	mkdir -p bin

386: bindir
	for i in $C386
	do 
		cd $i
		mk install
		cd ..
	done

arm: bindir
	for i in $CARM
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
	rm -rf bin
