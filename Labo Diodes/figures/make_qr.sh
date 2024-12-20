#!/bin/bash
qrencode -o QR_LED.EPS -l H -d 300 -t EPS "http://www.vishay.com/docs/83012/tlhg540.pdf"
epspdf QR_LED.EPS
qrencode -o QR_1N5392.EPS -l H -d 300 -t EPS "http://www.protostack.com/download/1N5391-9.pdf"
epspdf QR_1N5392.EPS
qrencode -o QR_PONT.EPS -l H -d 300 -t EPS "http://diotec.com/tl_files/diotec/files/pdf/datasheets/b40c2300"
epspdf QR_PONT.EPS
qrencode -o QR_THEDIODES.EPS -l H -d 300 -t EPS "https://www.jamendo.com/fr/list/a108379/waveform"
epspdf QR_THEDIODES.EPS
qrencode -o QR_Fantome.EPS -l H -d 300 -t EPS "https://www.youtube.com/watch?v=sAWEYLPyovA"
epspdf QR_Fantome.EPS
qrencode -o QR_zener.EPS -l H -d 300 -t EPS "http://fr.wikipedia.org/wiki/Clarence_Zener"
epspdf QR_zener.EPS