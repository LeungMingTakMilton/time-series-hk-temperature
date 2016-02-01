#wget http:\/\/www.wunderground.com\/history\/airport\/VHHH\/1996\/1\/29\/CustomHistory.html\?dayend\=1\&monthend=3\&yearend\=""2015\&req_city\=\&req_state\=\&req_statename\=\&reqdb.zip\=\&reqdb.magic=&reqdb.wmo\=\&format=1

# declare -a YYYYMMDD=("201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201201","201502")

YYYYMMDD=(201201 201202 201203 201204 201205 201206 201207 201208 201209 201210 201211 201212 201301 201302 201303 201304 201305 201306 201307 201308 201309 201310 201311 201312 201401 201402 201403 201404 201405 201406 201407 201408 201409 201410 201411 201412 201501 201502 201503)
# Data source: http://data.jmsc.hku.hk/hongkong/observatory/

for i in ${YYYYMMDD[@]}
do 
    
    wget http:\/\/data.jmsc.hku.hk\/hongkong\/observatory\/archive\/metob${i}.csv
done
# wget http:\/\/data.jmsc.hku.hk\/hongkong\/observatory\/archive\/metob${YYYYMMDD}.csv

