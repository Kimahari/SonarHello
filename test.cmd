dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover --results-directory ./test-results
dotnet build-server shutdown
dotnet sonarscanner begin /k:"AwesomeProject" /d:sonar.host.url="http://localhost:9999" /d:sonar.coverage.exclusions=”**Test*.cs /d:sonar.cs.opencover.reportsPaths=**/coverage.opencover.xml /d:sonar.login="5349cf3bd44de668ab9ffdc2a4b99c5985ee2b89"
dotnet build
dotnet sonarscanner end /d:sonar.login="5349cf3bd44de668ab9ffdc2a4b99c5985ee2b89"