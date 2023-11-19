#!/bin/sh
DIR="./TextClassification"
mkdir $DIR
cd $DIR

_TRAIN_DOWNLOAD_URL="https://raw.githubusercontent.com/mhjabreel/CharCnn_Keras/master/data/ag_news_csv/train.csv"
_TEST_DOWNLOAD_URL="https://raw.githubusercontent.com/mhjabreel/CharCnn_Keras/master/data/ag_news_csv/test.csv"

rm -rf agnews
mkdir agnews
curl $_TRAIN_DOWNLOAD_URL -o train.csv
mv train.csv agnews/train.csv
curl $_TEST_DOWNLOAD_URL -o test.csv
mv test.csv agnews/test.csv

rm -rf dbpedia
mkdir dbpedia
curl https://s3.amazonaws.com/fast-ai-nlp/dbpedia_csv.tgz -o dbpedia_csv.tgz
tar -zxvf dbpedia_csv.tgz
mv dbpedia_csv/* dbpedia
rm -rf dbpedia_csv.tgz dbpedia_csv


rm -rf yahoo_answers_topics
mkdir yahoo_answers_topics
curl  https://s3.amazonaws.com/fast-ai-nlp/yahoo_answers_csv.tgz -o yahoo_answers_csv.tgz
tar -zxvf yahoo_answers_csv.tgz
mv  yahoo_answers_csv/* yahoo_answers_topics
rm -rf yahoo_answers_csv.tgz yahoo_answers_csv


cd ..
cp classes/agnews/classes.txt TextClassification/agnews/classes.txt
cp classes/dbpedia/classes.txt TextClassification/dbpedia/classes.txt
cp classes/yahoo_answers_topics/classes.txt TextClassification/yahoo_answers_topics/classes.txt

