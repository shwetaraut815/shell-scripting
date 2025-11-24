# print process by their process Id
 
 ps -ef | awk -F" " '{print $2}'

# print only error from remote log 

 curl <google.com> | grep <has>