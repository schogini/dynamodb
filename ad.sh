
aws dynamodb --region ap-south-1 put-item \
    --table-name Music \
    --item '{ "Artist": {"S": "Acme Band"}, "SongTitle": {"S": "Happy Day"} }' \
    --return-consumed-capacity TOTAL 
