SET BUILD_PATH="%~dp0_build"
cmake -G "Ninja" -B "%BUILD_PATH%" -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DBOARD=stm32_min_dev_f411ce .

ninja -C "%BUILD_PATH%" -j 4 %*
