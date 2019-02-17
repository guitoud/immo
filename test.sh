#!/usr/bin/bash
# chaque jour, récupere toute les videos taguée et copie la video dans le répertoire du jour

set -x
set -e
$curl = /usr/bin/curl
# la ton url d'acces
export URL="http://example.com/leStreamJson/jsonrachidou.json"
# la ton directory ftp:
export DIRNAME="/var/run/ftpd"

function createTag()
        tags = $(cat jsonrachidou.json | jq -S '.posts[]|(.url|.tags[0].title)')
	for I in tags
		do
			mkdir $i
		done
	return 0

# exemple cd $dirDate ; createTag() va créer un répertoire tag dans le repertoire dirDate

function getCSV($streamUrl)
	# RAchidou bidou : quand tu doit remplacer le cat $streamurl par curl $streamURl avec ta requete es.
	$tags, $url = $(cat $steamUrl | jq -r .posts[]| [(.tags[].title), .attachments[].images.full.url]|@csv)
	return $tags, $url
	# todo boucle for sur shift de la longueur tags quand len tags = 1 alors url

$tags, $url = getCSV(jsonrachidou.json)
	
#function getTag()
#	test = shift $@
# 	tag = $($curl $URL |  jq -S '.posts[]|{url: .url, tags: .tags[0].title} )' )
#	return $tag
#
#function getQuantieme()
#        date = $(date +%j)
#	return $date
#
#function getUrl($tag)
#	fname = shift $@
#	toto = curl -o $test $fname
#	return $toto
#
#for I in liste_tag ; do
#	tag = getTag(liste_tag)
#	dateq = getQuantieme()
# 	fname = getUrl(tag)
#	cp fname $toto/$dateq
#done

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
		test = `curl -O $TODO`
	done	

downloadPath = creeLaDate($DIRNAME)
downloadVideos($downloadPath)
