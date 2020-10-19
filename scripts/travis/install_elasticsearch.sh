if [ $ES_DOWNLOAD_URL ]
then
    wget ${ES_DOWNLOAD_URL} -q
    tar -xzf elasticsearch-${ES_VERSION}-linux-x86_64.tar.gz
    ./elasticsearch-${ES_VERSION}/bin/elasticsearch-plugin install analysis-icu
    ./elasticsearch-${ES_VERSION}/bin/elasticsearch -d
fi
