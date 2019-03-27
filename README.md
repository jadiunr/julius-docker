# Julius on Docker

## Usage

```
docker-compose build
docker-compose up -d
docker-compose exec julius bash

# GMM
julius -C /dickit/main.jconf -C /dickit/am-gmm.jconf -demo

# DNN
julius -C /dickit/main.jconf -C /dickit/am-dnn.jconf -dnnconf /dickit/julius.dnnconf -demo
```

Read more: https://julius.osdn.jp/juliusbook/ja/desc_options.html
