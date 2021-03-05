all:
init:
	npx react-native init my_react
build:
	cd my_react ; npx react-native run-android
cp:
	cp my_react/android/app/build/outputs/apk/debug/app-debug.apk my_react.apk
