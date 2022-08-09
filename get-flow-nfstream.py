from nfstream import NFStreamer

online_streamer = NFStreamer(source="enp9s0", idle_timeout=30, active_timeout=30)
for flow in online_streamer:
    print(flow)  # print it.