dist:	true.go
	go get github.com/laher/goxc
	go get github.com/pwaller/goupx
	goxc -bc linux -d . -pv dist xc
	goupx dist/*/true

clean:
	rm -rf dist
