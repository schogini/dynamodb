
# The following AWS CLI example shows how to create a table (Music). 
# The primary key consists of Artist (partition key) and SongTitle (sort key), 
# each of which has a data type of String.


aws dynamodb --region ap-south-1 delete-table --table-name Music
aws dynamodb --region ap-south-1 create-table \
    --table-name Music \
    --attribute-definitions \
        AttributeName=Artist,AttributeType=S \
        AttributeName=SongTitle,AttributeType=S \
    --key-schema \
        AttributeName=Artist,KeyType=HASH \
        AttributeName=SongTitle,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1
