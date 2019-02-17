#!/usr/bin/bash
# chaque jour, récupere toute les videos taguée et copie la video dans le répertoire du jour

set -x
set -e
$curl = /usr/bin/curl
# la ton url d'acces
export URL="http://example.com/lestreamjson/jsonrachidou.json"
# la ton directory ftp:
export DIRNAME="/var/run/ftpd"


function createTag()
        tags = $(cat jsonrachidou.json | jq -S '.posts[]|(.url|.tags[0].title)')
	for I in tags
		do
			mkdir $i
		done
	return 0

function getTagComaFile()
	
function getTag()
	test = shift $@
i	tag = $($curl $URL |  jq -S '.posts[]|{url: .url, tags: .tags[0].title} )' )
	return $tag

function getQuantieme()
        date = $(date +%j)
	return $date

function getUrl($tag)
	fname = shift $@
	toto = curl -o $test $fname
	return $toto

for I in liste_tag ; do
	tag = getTag(liste_tag)
	dateq = getQuantieme()
 	fname = getUrl(tag)
	cp fname $toto/$dateq
done
function creeLaDate()
	racine=shift $@
	dateJour=$(date +%j)
	mkdir $racine/$dateJour
	return $rachine/$dateJour

function downloadVideos()
	downloadDir=shift $@
	tag = getTag()
	listeUrl = getListeUrl($tag)
	for I in $tag ; do
		url = getUrl($tag)
		test = `curl -O $ `
	done	

downloadPath = creeLaDate($DIRNAME)
downloadVideos($downloadPath)
