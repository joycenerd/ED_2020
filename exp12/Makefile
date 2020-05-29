all: grayImage grayVid pedestrianDetection

grayImage:
	g++ `pkg-config --cflags opencv` grayImage.cpp cvheader.h oCLAHE.h -o grayImage `pkg-config --libs opencv`

grayVid:
	g++ `pkg-config --cflags opencv` grayVid.cpp cvheader.h oCLAHE.h -o grayVid `pkg-config --libs opencv`

pedestrianDetection:
	g++ `pkg-config --cflags opencv` pedestrianDetection.cpp cvheader.h oCLAHE.h -o pedestrianDetection `pkg-config --libs opencv`

clean:
	rm grayImage grayVid pedestrianDetection

