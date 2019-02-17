cat jsonrachidou.json | jq -r .posts[]| [(.tags[].title), .attachments[].images.full.url]|@csv
