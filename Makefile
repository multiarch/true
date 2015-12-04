dist:	true.go
	go get github.com/laher/goxc
	go get github.com/pwaller/goupx
	goxc -bc linux -d . -pv dist xc
	goupx dist/*/true
	cd dist; for arch in *; do                           \
	  echo 'FROM scratch' > $$arch/Dockerfile;           \
	  echo 'ADD ./true /true' >> $$arch/Dockerfile;      \
	  echo 'ENTRYPOINT ["/true"]' >> $$arch/Dockerfile;  \
	  docker build -t multiarch/true:$$arch $$arch;      \
	done

.PHONY: clean
clean:
	rm -rf dist

.PHONY: re
re: clean dist

