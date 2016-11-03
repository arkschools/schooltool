.PHONY: all
all: download patch

.PHONY: download
download:
	bzr init-repo . || true
	bzr branch lp:schooltool.devtools || (cd schooltool.devtools; bzr up)
	bzr branch lp:~schooltool-owners/schooltool/ark schooltool  || (cd schooltool; bzr up)
	bzr branch lp:~schooltool-owners/schooltool.gradebook/ark schooltool.gradebook || (cd schooltool.gradebook; bzr up)
	bzr branch lp:~schooltool-owners/schooltool.lyceum.journal/ark schooltool.lyceum.journal || (cd schooltool.lyceum.journal; bzr up)
	bzr branch lp:schooltool.ark || (cd schooltool.ark; bzr up)
	bzr branch lp:schooltool.fee || (cd schooltool.fee; bzr up)
	bzr branch lp:schooltool.peas || (cd schooltool.peas; bzr up)
	bzr branch lp:schooltool.isli || (cd schooltool.isli; bzr up)
	bzr branch lp:schooltool.rising || (cd schooltool.rising; bzr up)
	bzr branch lp:schooltool.intervention || (cd schooltool.intervention; bzr up)
	bzr branch lp:schooltool.cando || (cd schooltool.cando; bzr up)

.PHONY: patch
patch:
	cd schooltool; patch -Np0 -R -r - < ../configure_paste.patch; patch -Np0 -r - < ../configure_paste.patch
	cd schooltool.peas; patch -Np0 -R -r -< ../configure_develop.patch; patch -Np0 -r -< ../configure_develop.patch
	cd schooltool.isli; patch -Np0 -R -r -< ../configure_develop.patch; patch -Np0 -r - < ../configure_develop.patch
	cd schooltool.rising; patch -Np0 -R -r -< ../configure_develop.patch; patch -Np0 -r - < ../configure_develop.patch
