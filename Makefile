nll: snap

# to change version modify torque.spec (version), README.torque, src/include/pbs_version.h, CHANGELOG, and base directory

#REV_SED_CMD=sed "s/\(\#define TORQUE_REVISION \"\).*\"/\1`buildutils/get.revision`\"/" src/include/torque-build.h > src/include/torque-build.h.2 && mv src/include/torque-build.h.2 src/include/torque-build.h
REV_TEST_CMD=sed "s/\(\#define TORQUE_REVISION \"\).*\"/\1`buildutils/get.revision`\"/" src/include/torque-build.h

help:
	echo default=snap  torque120p6 torque120p5 torque120p4 torque120p3 torque120p2 torque120p1

snap:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd trunk && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz

snap22:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.2-fixes && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz

snap23:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.3-fixes && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz


snap24:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.4-fixes && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz


snap25:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.5-fixes && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz

snap30:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 3.0-fixes && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz

snap413:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 4.1.3 && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz && rm -f torque-*-snap.$$snapstamp.tar.gz

snap414:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 4.1-fixes && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz && rm -f torque-*-snap.$$snapstamp.tar.gz


snap420:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 4.2.0 && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz && rm -f torque-*-snap.$$snapstamp.tar.gz


snap401:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 4.0.1 && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz && rm -f torque-*-snap.$$snapstamp.tar.gz

snap40:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 4.0-fixes && svn update && ./autogen.sh && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/4.0-beta/ && rm -f torque-*-snap.$$snapstamp.tar.gz && rm -f torque-*-snap.$$snapstamp.tar.gz

snap-NUMA:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd NUMA && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz

snap-yahoo:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.3-yahoo && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz && \
	echo "http://www.clusterresources.com/downloads/yahoo/torque/torque-2.3.0-snap.$$snapstamp.tar.gz"

snap23trans:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.3-trans && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/transition/ && rm -f torque-*-snap.$$snapstamp.tar.gz && \
	echo "http://www.clusterresources.com/downloads/torque/snapshots/transition/torque-2.3.7-trans-snap.$$snapstamp.tar.gz"


sreque-test:
	cd 2.3-fixes && $(REV_TEST_CMD);

snap-extreme:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.3-extreme && svn update && ./configure && \
	make snapstamp=$$snapstamp-extreme snap && \
	scp torque-*-snap.$$snapstamp-extreme.tar.gz http:/var/www/html/clusterresources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp-extreme.tar.gz && \
	echo "http://www.clusterresources.com/downloads/torque/snapshots/torque-2.3.0-snap.$$snapstamp-extreme.tar.gz"


full22:
	cd 2.2-fixes && svn update && ./configure && \
	make distcheck && $(REV_SED_CMD) && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

full23:
	cd 2.3-fixes && svn update && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

	
full24:
	cd 2.4-fixes && svn update && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

	
full25:
	cd 2.5-fixes && svn update && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz


full30:
	cd 3.0-fixes && svn update && ./autogen.sh && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

full40:
	cd 4.0-fixes && svn update && ./autogen.sh && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

full41:
	cd trunk && svn update && ./autogen.sh && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz


full420:
	cd 4.2.0 && git pull && ./autogen.sh && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

snap21:


snap21:
	snapstamp=`date +%Y%m%d%H%M`; \
	cd 2.1-fixes && svn update && ./configure && \
	make snapstamp=$$snapstamp snap && \
	scp torque-*-snap.$$snapstamp.tar.gz web@clures.com:/ace/resources/downloads/torque/snapshots/ && rm -f torque-*-snap.$$snapstamp.tar.gz

full21:
	cd 2.1-fixes && svn update && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz web@clures.com:/ace/resources/downloads/torque/ && rm -f torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz

full:
	cd trunk && svn update && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz http:/var/www/html/clusterresources/downloads/torque/snapshots/

efull:
	cd trunk && svn update && ./configure && \
	make distcheck && \
	scp torque-`grep ^VERSION Makefile | sed 's/VERSION = //g'`.tar.gz http:/var/www/html/clusterresources/downloads/etorque

torque200p7:

	./buildversion 2.0.0p7

torque200p6:

	BUILD=2.0.0p6 ; \
	./buildversion $$BUILD

torque200p5:

	BUILD=2.0.0p5 ; \
	./buildversion $$BUILD

torque200p4:

	BUILD=2.0.0p4 ; \
	./buildversion $$BUILD

torque200p3:

	BUILD=2.0.0p3 ; \
	./buildversion $$BUILD

torque200p2:

	BUILD=2.0.0p2 ; \
	./buildversion $$BUILD

torque200p1:

	BUILD=2.0.0p1 ; \
	./buildversion $$BUILD

torque200p0:

	BUILD=2.0.0p0 ; \
	./buildversion $$BUILD

torque120p7:

	BUILD=1.2.0p7 ; \
	./buildversion $$BUILD

torque120p6:

	BUILD=1.2.0p6 ; \
	./buildversion $$BUILD

torque120p5:

	tar -cvf ../dist/torque-1.2.0p5.tar torque-1.2.0p5
	rm -f ../dist/torque-1.2.0p5.tar.gz
	gzip ../dist/torque-1.2.0p5.tar
#	scp ../dist/torque-1.2.0p5.tar.gz http:/var/www/html/clusterresources/downloads/torque
	scp ../dist/torque-1.2.0p5.tar.gz http:/var/www/html/clusterresources/downloads/torque/temp/torque-1.2.0p5-snap.`date +%s`.tar.gz

torque120p4:
	tar -cvf ../dist/torque-1.2.0p4.tar torque-1.2.0p4
	rm -f ../dist/torque-1.2.0p4.tar.gz
	gzip ../dist/torque-1.2.0p4.tar
#	scp ../dist/torque-1.2.0p4.tar.gz http:/var/www/html/clusterresources/downloads/torque
	scp ../dist/torque-1.2.0p4.tar.gz http:/var/www/html/clusterresources/downloads/torque/temp/torque-1.2.0p4-snap.`date +%s`.tar.gz

torque120p3:
	tar -cvf ../dist/torque-1.2.0p3.tar torque-1.2.0p3
	rm -f ../dist/torque-1.2.0p3.tar.gz
	gzip ../dist/torque-1.2.0p3.tar
#	scp ../dist/torque-1.2.0p3.tar.gz 10.10.10.125:/var/www/html/clusterresources/downloads/torque
	scp ../dist/torque-1.2.0p3.tar.gz 10.10.10.125:/var/www/html/clusterresources/downloads/torque/temp/torque-1.2.0p3-snap.`date +%s`.tar.gz

torque120p2:
	tar -cvf ../dist/torque-1.2.0p2.tar torque-1.2.0p2
	rm -f ../dist/torque-1.2.0p2.tar.gz
	gzip ../dist/torque-1.2.0p2.tar
	scp ../dist/torque-1.2.0p2.tar.gz 10.10.10.125:/var/www/html/clusterresources/downloads/torque
	scp ../dist/torque-1.2.0p2.tar.gz 10.10.10.125:/var/www/html/clusterresources/downloads/torque/temp/torque-1.2.0p2-snap.`date +%s`.tar.gz

torque120p1:
	tar -cvf ../dist/torque-1.2.0p1.tar torque-1.2.0p1
	rm -f ../dist/torque-1.2.0p1.tar.gz
	gzip ../dist/torque-1.2.0p1.tar
	scp ../dist/torque-1.2.0p1.tar.gz 10.10.10.125:/var/www/html/clusterresources/downloads/torque
	scp ../dist/torque-1.2.0p1.tar.gz 10.10.10.125:/var/www/html/clusterresources/downloads/torque/temp/torque-1.2.0p1-snap.`date +%s`.tar.gz
