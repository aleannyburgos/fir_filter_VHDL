***Notes***

To read these waveforms, its important to understand the signals so heres the two main signals:

- **/fir_filter_tb/uut/y** is the output signals

- **/fir_filter_tb/uut/fir_signal** is the input signals

The first attempt waveform snapshot was everything connected without any intermediatte registers. The waveform showed that the steady state output was achieved but the convolution was wrong.

The second attempt waveform snapshot shows the circuit is acheieving steady state and succeeding cases but not the preceding cases. The ROM was disconnected to test the combinational path.

The third attempt waveforms shows the circuit now showing the correct outputs including steady state and convolution. The ROM is still disconnected.
