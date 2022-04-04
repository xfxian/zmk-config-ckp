west init -l /config
west update
west zephyr-export
west build -s zmk/app -b ${BOARD} -- -DZMK_CONFIG="/config"
mv /build/zephyr/zmk.uf2 /build/bt75.uf2
