# ClosePorts
ClosePorts

# MS17-010缓解措施

## 一键关闭445端口
- 需要以管理员权限打开（XP、03环境不需要）
- 需要重启
- 适用于所有Windows版本
- 可使用命令netstat -na | findstr 445 查看445端口是否开启
- 运行后会关闭445端口

## 一键设置防火墙
- 需要以管理员权限打开
- 适用于Win7、Win8、Win10、Win2008、Win2012
- 不会关闭端口
- 运行后会在【Windows防火墙】-【高级防火墙界面】-【入站规则】中新增【NSA缓解规则】规则

## 开发者相关
- [神月信安](http://www.yuesec.com/)
