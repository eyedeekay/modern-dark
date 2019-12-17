
I2PTHEMES=`find $(HOME) -name 'i2p' -exec echo {}/docs/themes \;`

find:
	echo "themes dir $(I2PTHEMES)"

install:
	cp -r themes/console/dark-modern $(I2PTHEMES)/console/dark-modern
	cp -r themes/snark/dark-modern $(I2PTHEMES)/snark/dark-modern
	cp -r themes/susidns/dark-modern $(I2PTHEMES)/susidns/dark-modern
	cp -r themes/susimail/dark-modern $(I2PTHEMES)/susimail/dark-modern

remove:
	find $(I2PTHEMES) -name dark-modern -exec rm -rf {} \;

check:
	find $(I2PTHEMES) -name dark-modern