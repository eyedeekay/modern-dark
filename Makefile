
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

images:
	inkscape -z -e ../themes/susimail/dark/images/login.png -w 16 -h 16 key.svg
	inkscape -z -e ../themes/susimail/dark/images/offline.png -w 16 -h 16 briefcase.svg
	inkscape -z -e ../themes/susimail/dark/images/settings.png -w 16 -h 16 settings.svg
	inkscape -z -e ../themes/susimail/dark/images/help.png -w 16 -h 16 help-circle.svg
	inkscape -z -e ../themes/susimail/dark/images/account.png -w 16 -h 16 book-open.svg
	inkscape -z -e ../themes/susimail/dark/images/edit.png -w 16 -h 16 edit.svg
	inkscape -z -e ../themes/susimail/dark/images/refresh.png -w 16 -h 16 refresh.svg
	inkscape -z -e ../themes/susimail/dark/images/logout.png -w 16 -h 16 log-out.svg
	inkscape -z -e ../themes/susimail/dark/images/folder.png -w 16 -h 16 folder.svg
	inkscape -z -e ../themes/susimail/light/images/login.png -w 16 -h 16 key.svg
	inkscape -z -e ../themes/susimail/light/images/offline.png -w 16 -h 16 briefcase.svg
	inkscape -z -e ../themes/susimail/light/images/settings.png -w 16 -h 16 settings.svg
	inkscape -z -e ../themes/susimail/light/images/help.png -w 16 -h 16 help-circle.svg
	inkscape -z -e ../themes/susimail/light/images/account.png -w 16 -h 16 book-open.svg
	inkscape -z -e ../themes/susimail/light/images/edit.png -w 16 -h 16 edit.svg
	inkscape -z -e ../themes/susimail/light/images/refresh.png -w 16 -h 16 refresh.svg
	inkscape -z -e ../themes/susimail/light/images/logout.png -w 16 -h 16 log-out.svg
	inkscape -z -e ../themes/susimail/light/images/folder.png -w 16 -h 16 folder.svg

feh:
	feh ../themes/susimail/light/images/refresh.png

add-images:
	cp ../themes/susimail/dark/images/login.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/offline.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/settings.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/help.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/account.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/edit.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/refresh.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/logout.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/folder.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/images
	cp ../themes/susimail/dark/images/login.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/offline.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/settings.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/help.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/account.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/edit.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/refresh.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/logout.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images
	cp ../themes/susimail/dark/images/folder.png \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/images


build: clean
	mkdir -p themes/console/dark-modern/ \
		themes/snark/dark-modern/ \
		themes/susidns/dark-modern/ \
		themes/susimail/dark-modern/
	cp -rv $(I2PTHEMES)/console/dark/images themes/console/dark-modern/images
	cp -rv $(I2PTHEMES)/snark/dark/images themes/snark/dark-modern/images
	cp -rv $(I2PTHEMES)/susidns/dark/images themes/susidns/dark-modern/images
	cp -rv $(I2PTHEMES)/susimail/dark/images themes/susimail/dark-modern/images
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/console.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/console.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/console_ar.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/console_ar.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/console_big.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/console_big.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/mobile.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/mobile.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/console/dark/i2ptunnel.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/console/dark-modern/i2ptunnel.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/snark/dark/snark.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/snark/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/snark/dark-modern/snark.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/snark/dark/nocollapse.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/snark/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/snark/dark-modern/nocollapse.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/susidns/dark/susidns.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/susidns/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/susidns/dark-modern/susidns.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/susimail/dark/susimail.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/susimail/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/susimail/dark-modern/susimail.css
	cleancss $(CLEANCSS_OPTS) --format beautify $(I2PTHEMES)/susimail/dark/mobile.css | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/console/dark/||g" | \
		sed "s|../../../../..$(HOME)/i2p/docs/themes/susimail/dark/||g" | \
		sed "s|$(HOME)/i2p/docs/||g" > \
		themes/susimail/dark-modern/mobile.css

install: remove
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
	find $(I2PTHEMES) -name dark-modern -exec rm -rf {} \; ;true

check:
	find $(I2PTHEMES) -name dark-modern

diff-console:
	cp $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/console.css $(I2PTHEMES)/console/dark/console.old.css
	cd $(I2PTHEMES)/console/dark/ && \
	diff console.css \
		console.old.css | tee \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/consolecss.diff
	sleep 1
	cd $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/ && \
	patch -R console.css consolecss.diff

diff-tunnel:
	cp $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/i2ptunnel.css $(I2PTHEMES)/console/dark/i2ptunnel.old.css
	cd $(I2PTHEMES)/console/dark/ && \
	diff i2ptunnel.css \
		i2ptunnel.old.css | tee \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/i2ptunnelcss.diff
	sleep 1
	cd $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/console/dark/ && \
	patch -R i2ptunnel.css i2ptunnelcss.diff

diff-snark:
	cp $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/snark/dark/snark.css $(I2PTHEMES)/snark/dark/snark.old.css
	cd $(I2PTHEMES)/snark/dark/ && \
	diff snark.css \
		snark.old.css | tee \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/snark/dark/snarkcss.diff
	sleep 1
	cd $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/snark/dark/ && \
	patch -R snark.css snarkcss.diff

diff-susidns:
	cp $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susidns/dark/susidns.css $(I2PTHEMES)/susidns/dark/susidns.old.css
	cd $(I2PTHEMES)/susidns/dark/ && \
	diff susidns.css \
		susidns.old.css | tee \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susidns/dark/susidnscss.diff
	sleep 1
	cd $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susidns/dark/ && \
	patch -R susidns.css susidnscss.diff

diff-susimail:
	cp $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/susimail.css $(I2PTHEMES)/susimail/dark/susimail.old.css
	cd $(I2PTHEMES)/susimail/dark/ && \
	diff susimail.css \
		susimail.old.css | tee \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/susimailcss.diff
	sleep 1
	cd $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/dark/ && \
	patch -R susimail.css susimailcss.diff

diff-susimail-light:
	cp $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/susimail.css $(I2PTHEMES)/susimail/light/susimail.old.css
	cd $(I2PTHEMES)/susimail/light/ && \
	diff susimail.css \
		susimail.old.css | tee \
		$(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/installer/resources/themes/susimail/light/susimailcss.diff
	sleep 1

patch: diff-console diff-tunnel diff-snark diff-susidns diff-susimail
	cd $(HOME)/Workspace/desktop-Workspace/mtn/i2p.i2p/ &&
		mtn diff | tee darktheme.diff

checkin: patch
