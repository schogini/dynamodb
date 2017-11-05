
# The following AWS CLI example shows how to upload a json
# The primary key consists of Artist (partition key) and SongTitle (sort key), 
# each of which has a data type of String.


aws dynamodb --region ap-south-1 batch-write-item --request-items file://Music.json
