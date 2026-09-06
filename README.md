# Semana2-CDY2203

# Levantar Contenedores 
```
docker-compose up -d --build
```
# Comando para eliminar init antiguo del proyecto y configurar con nuevo 
```
docker-compose down -v
```

# Comando para ejcutar sonar desde puerto 90:90
```
./mvnw clean verify sonar:sonar -DskipTests -Dsonar.projectKey=backend -Dsonar.host.url=http://localhost:9000 -Dsonar.login=reeplazar-Token
```