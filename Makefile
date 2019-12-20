
I2PTHEMES=`find $(HOME) -maxdepth 1 -name 'i2p' -exec echo {}/docs/themes \;`
DEBI2PTHEMES=`find /usr/share/ -maxdepth 1 -name 'i2p' -exec echo {}/docs/themes \;`
MACI2PTHEMES="/Applications/i2p/docs/themes"
CLEANCSS_OPTS=-O1 all -O2 all

find:
	@echo "themes dir $(I2PTHEMES)"
	@echo "system themes dir $(DEBI2PTHEMES)"
	@echo "mac themes dir $(MACI2PTHEMES)"

ls:
	ls $(DEBI2PTHEMES)

clean:
	rm -rf themes/console/dark-modern/ \
		themes/snark/dark-modern/ \
		themes/susidns/dark-modern/ \
		themes/susimail/dark-modern/

build: clean
	mkdir -p themes/console/dark-modern/ \
		themes/snark/dark-modern/ \
		themes/susidns/dark-modern/ \
		themes/susimail/dark-modern/
	cp -rv $(I2PTHEMES)/console/dark/images themes/console/dark-modern/images
	cp -rv $(I2PTHEMES)/snark/dark/images themes/snark/dark-modern/images
	cp -rv $(I2PTHEMES)/susidns/dark/images themes/susidns/dark-modern/images
	cp -rv $(I2PTHEMES)/susimail/dark/images themes/susimail/dark-modern/images
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/console.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/console.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/console_ar.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/console_ar.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/console_big.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/console_big.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/mobile.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/mobile.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/i2ptunnel.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/i2ptunnel.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/snark/dark/snark.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/snark/dark-modern/snark.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/snark/dark/nocollapse.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/snark/dark-modern/nocollapse.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/susidns/dark/susidns.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/susidns/dark-modern/susidns.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/susimail/dark/susimail.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/susimail/dark-modern/susimail.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/susimail/dark/mobile.css | sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/susimail/dark-modern/mobile.css

install:
	cp -r themes/console/dark-modern $(I2PTHEMES)/console/dark-modern
	cp -r themes/snark/dark-modern $(I2PTHEMES)/snark/dark-modern
	cp -r themes/susidns/dark-modern $(I2PTHEMES)/susidns/dark-modern
	cp -r themes/susimail/dark-modern $(I2PTHEMES)/susimail/dark-modern

debian-install:
	cp -r themes/console/dark-modern $(DEBI2PTHEMES)/console/dark-modern
	cp -r themes/snark/dark-modern $(DEBI2PTHEMES)/snark/dark-modern
	cp -r themes/susidns/dark-modern $(DEBI2PTHEMES)/susidns/dark-modern
	cp -r themes/susimail/dark-modern $(DEBI2PTHEMES)/susimail/dark-modern

osx-install:
	cp -r themes/console/dark-modern $(MACI2PTHEMES)/console/dark-modern
	cp -r themes/snark/dark-modern $(MACI2PTHEMES)/snark/dark-modern
	cp -r themes/susidns/dark-modern $(MACI2PTHEMES)/susidns/dark-modern
	cp -r themes/susimail/dark-modern $(MACI2PTHEMES)/susimail/dark-modern

remove:
	find $(I2PTHEMES) -name dark-modern -exec rm -rf {} \;

check:
	find $(I2PTHEMES) -name dark-modern

checkin:
	cp $(I2PTHEMES)/console/dark/console.css \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/console.css
	cp $(I2PTHEMES)/console/dark/i2ptunnel.css \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/i2ptunnel.css
	cp $(I2PTHEMES)/snark/dark/snark.css \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/snark/dark/snark.css
	cp $(I2PTHEMES)/susidns/dark/susidns.css \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susidns/dark/susidns.css
	cp $(I2PTHEMES)/susimail/dark/susimail.css \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/susimail.css
