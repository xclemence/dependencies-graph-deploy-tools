SET currentPath=%~dp0

docker-compose -f "%currentPath%..\dependencies-graph\docker-compose.yml" ^
               --env-file "%currentPath%..\.env" ^
               --profile neo4j --profile graphql --profile keycloak^
               up
