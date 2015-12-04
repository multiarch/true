dist:	true.go
	go get github.com/laher/goxc
	go get github.com/pwaller/goupx
	goxc -bc linux -d . -pv dist xc
	goupx dist/*/true

.PHONY: clean
clean:
	rm -rf dist

.PHONY: re
re: clean dist

