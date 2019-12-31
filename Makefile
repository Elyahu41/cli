.PHONY: run

run:
	rm -rf ./app \
	&& ./build/macOS/cgapp -n my-app -b echo -f preact -p ./app

clean:
	rm -rf ./build ./app
	@echo "[✔️] Project was cleaned!"

build-macosx:
	rm -rf ./build ./app ./configs/**/.DS_Store \
	&& pkger \
	&& GOOS=darwin GOARCH=amd64 go build -o ./build/macOS/cgapp ./*.go
	@echo "[✔️] Build for macOS (amd64) complete!"
