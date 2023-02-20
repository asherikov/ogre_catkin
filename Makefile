update:
	git fetch --all
	git rm --ignore-unmatch -rf airsim
	rm -Rf ogre
	git read-tree --prefix=ogre -u b8089b6e276b7c298d17a4360dea6a49cabf7a21


addremote:
	-git remote add ogre https://github.com/OGRECave/ogre.git --no-tags

