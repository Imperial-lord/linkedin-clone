---
sidebar_position: 2
---

# Radar

Radar is a leading geofencing platform. It helps build best-in-class location-based experiences with SDKs, APIs, and dashboards for geofencing, place detection, trip tracking, and more.

## Getting Started

Create a new radar account. Once done open your [dashboard](https://radar.com/dashboard) to get the keys. They key we will need is of the type `Live publishable (client)`. Copy this key.

![Radar](/img/tutorial/chat-smart-replies/radar.png)

## Use the API key

Open the environment file inside `assets/config/.env`. Once there, paste the API key in place. Your API key should look something like - `prj_live_pk_*************************`

```bash title="assets/config/.env"
RADAR_LIVE_TOKEN = "prj_live_pk_*************************"
```
