# subcarrier-sstv
Send and receive SSTV modulated on a broadcast FM subcarriers

## Receiving

### Requirements and compiling

Hardware requirements: RTL-SDR, proper FM antenna.

Install all software requirements:

```sh
sudo apt install qsstv gnuradio make
```

Then run ̀make`.

### Running

First, create PulseAudio loopback:

```sh
pactl load-module module-null-sink sink_name=SSTV
```

Start `qsstv`.

Start SSTV receiver:

```sh
./fm-subcarrier-sstv-rx
```

It outputs both SSTV signal and normal audio. You need to route them
to different audio devices. Do it by running `pavucontrol`:

* Playback tab: Route audio from first Python output to null output
  device and the second one to your sound card.

* Record tab: Route *Monitor of null output* to QSSTV input.

* Check that inputs and outputs are not muted.

Now should you be able to listen Instanssi radio tunes while watching
the pictures. Enjoy.
