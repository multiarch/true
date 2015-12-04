dist:	true.go
	goxc -bc linux -d . -pv dist xc
	goupx dist/*/true

clean:
	rm -rf dist
