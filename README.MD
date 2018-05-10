## kubectl常用调度命令

强制驱逐Node1节点中的容器，忽略daemonset容器

	kubectl drain node1 --force --delete-local-data --ignore-daemonsets

恢复Node1节点调度功能

	kubectl uncordon node1

添加NameSpace的imagePullSercet
	kubectl create secret docker-registry harborkey \
	--docker-server=harbor.gdphdc.com \ 
	--docker-username=admin --docker-password=Harbor12345 \
	--docker-email=deerjoe@qq.com -n <NameSpace名>

 启动 Dashboard
      nohup kubectl proxy --address='0.0.0.0'  --accept-hosts='^*$' >/dev/null 2>&1 &