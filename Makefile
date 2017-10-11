
all: build run_bins run_scripts clean

build: exe_c exe_cpp hello.exe hello.class # hello.jar # exe_pp

build_ls: build
	ls -l exe_c exe_cpp hello.exe hello.class

exe_c : hello.c
	gcc hello.c -o exe_c

exe_cpp: hello.cpp
	g++ hello.cpp -o exe_cpp

exe_vala: hello.vala
	valac hello.vala -o exe_vala

hello.exe: hello.cs
	mcs hello.cs

hello.class: hello.java
	javac hello.java

hello.jar: hello.kt
	kotlinc hello.kt

#exe_pp: hello.pp
#	fpc hello.pp -o exe_pp

run_bins:
	./exe_c
	./exe_cpp
	mono hello.exe
	# kotlin hello.jar
	java hello
	# ./exe_pp
	# ./exe_vala

run_scripts:
	dart hello.dart
	node hello.js
	lua hello.lua
	php hello.php
	perl hello.pl
	python hello.py
	Rscript hello.R
	ruby hello.rb
	bash hello.sh
	swift hello.swift

clean:
	rm -f exe exe_c exe_cpp hello.exe \
	hello.class hello.o exe_pp hello.Rout exe_vala
