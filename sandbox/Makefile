SHELL=/bin/bash
PACKAGES=schooltool schooltool.devtools schooltool.gradebook schooltool.lyceum.journal schooltool.ark schooltool.peas schooltool.isli schooltool.rising schooltool.intervention schooltool.cando schooltool.fee
REPOSITORIES=lp:~schooltool-owners/schooltool/ark lp:schooltool.devtools lp:~schooltool-owners/schooltool.gradebook/ark lp:~schooltool-owners/schooltool.lyceum.journal/ark lp:schooltool.ark lp:schooltool.peas lp:schooltool.isli lp:schooltool.rising lp:schooltool.intervention lp:schooltool.cando lp:schooltool.fee

.PHONY: all
all: download patch

.PHONY: download
download:
	d=($(PACKAGES)); \
	r=($(REPOSITORIES)); \
	for ((i=0;i<$${#d[@]};i++)); do \
	    echo $${d[i]}; \
	    [ -d $${d[i]} ] && (cd $${d[i]}; git pull) || git clone bzr::$${r[i]} $${d[i]}; \
	done

.PHONY: patch
patch:
	cd schooltool; patch -Np0 -R -r - < ../configure_paste.patch; patch -Np0 -r - < ../configure_paste.patch
	cd schooltool; patch -Np0 -R -r - < ../configure_pydev.patch; patch -Np0 -r - < ../configure_pydev.patch
	cd schooltool.peas; patch -Np0 -R -r -< ../configure_develop.patch; patch -Np0 -r -< ../configure_develop.patch
	cd schooltool.isli; patch -Np0 -R -r -< ../configure_develop.patch; patch -Np0 -r - < ../configure_develop.patch
	cd schooltool.rising; patch -Np0 -R -r -< ../configure_develop.patch; patch -Np0 -r - < ../configure_develop.patch
