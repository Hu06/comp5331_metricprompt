#!/bin/sh
DIR="./TextClassification"
mkdir $DIR
cd $DIR


_TRAIN_DOWNLOAD_URL="https://raw.githubusercontent.com/mhjabreel/CharCnn_Keras/master/data/ag_news_csv/train.csv"
_TEST_DOWNLOAD_URL="https://raw.githubusercontent.com/mhjabreel/CharCnn_Keras/master/data/ag_news_csv/test.csv"

mkdir agnews
wget --content-disposition $_TRAIN_DOWNLOAD_URL -P agnews
mv agnews.csv agnews/train.csv
wget --content-disposition $_TEST_DOWNLOAD_URL -P agnews
mv agnews.csv agnews/test.csv
tar -



rm -rf dbpedia

wget --content-disposition https://s3.amazonaws.com/fast-ai-nlp/dbpedia_csv.tgz

tar -zxvf dbpedia_csv.tgz
rm -rf dbpedia_csv.tgz
mv dbpedia_csv dbpedia

rm -rf yahoo_answers_topics
wget --content-disposition https://s3.amazonaws.com/fast-ai-nlp/yahoo_answers_csv.tgz

tar -zxvf yahoo_answers_csv.tgz
rm -rf yahoo_answers_csv.tgz
mv  yahoo_answers_csv yahoo_answers_topics


cd ..
cp classes/agnews/classes.txt TextClassification/agnews/classes.txt
cp classes/dbpedia/classes.txt TextClassification/dbpedia/classes.txt
cp classes/yahoo_answers_topics/classes.txt TextClassification/yahoo_answers_topics/classes.txt

