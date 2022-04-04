build/bt75.uf2: config/bt75.keymap
	docker run \
	  --mount type=bind,source="$(shell pwd)"/config,target=/config \
	  --mount type=bind,source="$(shell pwd)"/build,target=/build \
	  bt75

.PHONY: clean
clean:
	rm -rf ./build
