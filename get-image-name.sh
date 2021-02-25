cat images.txt | while read line ; \
  do
    NAME=$(skopeo inspect docker://$line | jq .Name)
    echo $NAME
  done
