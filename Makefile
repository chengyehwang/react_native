all:
init:
	npx react-native init my_react
fix:
	-cd my_react ; mkdir android/app/src/main/assets
	cd my_react ; npx react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res

build:
	cd my_react ; npx react-native run-android

cp:
	cp my_react/android/app/build/outputs/apk/debug/app-debug.apk my_react.apk
