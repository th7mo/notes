---
title: "Localhost apps on phone"
description: "View localhost web apps on your phone"
isPublic: true
---

If both your computer and phone are connected to the same Wi-Fi network, you
can access locally running web apps on your phone. This allows you to test the
app directly on a mobile device, rather than relying solely on browser developer
tools. First get the IP address by executing the following command:

```sh
hostname -I | awk '{print $1}'
```

If your mobile phone is connected to the same Wi-Fi network, it should be able
to access the web apps by searching for:

```
http://{ip-address}:{port-number}
```
