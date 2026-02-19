BUILD_CONFIG=private/msm-google/build.config.sunfish_performance build/build.sh "$@"

# Create zip
cp out/android-msm-pixel-4.14/dist/Image.lz4-dtb ak3
cp out/android-msm-pixel-4.14/dist/dtbo.img ak3
cat out/android-msm-pixel-4.14/dist/*.dtb > ak3/dtb
echo "Creating Kernel Zip"
cd ak3
zip -r9 eva-pixel4a-$(/bin/date -u '+%d%m%Y%I%M').zip * -x .git README.md
mv eva-pixel4a* ../
cd -
echo "Created Zip! Find it in root of the working dir "
