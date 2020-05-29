all: grayImage grayVid pedestrianDetection webcamDetection

grayImage:
	g++ `pkg-config --cflags opencv` grayImage.cpp cvheader.h oCLAHE.h oCLAHE.cpp -o grayImage `pkg-config --libs opencv`

grayVid:
	g++ `pkg-config --cflags opencv` grayVid.cpp cvheader.h oCLAHE.h oCLAHE.cpp -o grayVid `pkg-config --libs opencv`

pedestrianDetection:
	g++ `pkg-config --cflags opencv` pedestrianDetection.cpp cvheader.h oCLAHE.h oCLAHE.cpp -o pedestrianDetection `pkg-config --libs opencv`

webcamDetection:
	g++ `pkg-config --cflags opencv` webcamDetection.cpp cvheader.h oCLAHE.h oCLAHE.cpp -o webcamDetection `pkg-config --libs opencv`

clean:
	rm grayImage grayVid pedestrianDetection

