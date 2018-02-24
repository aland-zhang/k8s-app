## nginx-ingress部署疑难解答

1. ingress使用TLS时需要核对证书。若证书不正确，k8s走的是默认的fake证书，导致无法访问
2. nginx上传大小默认为1m，需要在CM内正确配置nginx参数/