## kubectl常用调度命令

强制驱逐Node1节点中的容器，忽略daemonset容器
	kubectl drain node1 --force --delete-local-data --ignore-daemonsets
恢复Node1节点调度功能
	kubectl uncordon node1
