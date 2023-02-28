# WIP

# only for example 

# artifact will be placed there
# $1 <SUBDIR>
# $2 privatepages URL
# $3 artifact name
# $4 token
pwd # current dir is project root

tar -cvzf artifact.tar.gz -C $1 .

curl -X POST https://$2/upload \
    -F "file=@$(realpath artifact.tar.gz)" \
    -H "Content-Type: multipart/form-data" \
    -F "artifactname=$3" \
    -F "token=$4"

# tar.sh wanteddir "yourpagesdomain.tld" docs secret
