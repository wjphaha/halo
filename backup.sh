#! /bin/bash
message=$(date "+%Y-%m-%d~%H.%M.%S-数据备份")

cd /root/.halo || exit

git add .

git commit -am "${message}"

git push -f origin master

echo "${message}" | mail -s "数据备份成功" 291186144@qq.com
