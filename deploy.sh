mvn clean package
cp target/kyc-mvc.war `cat serverpath`/webapps
tail -f `cat serverpath`/logs/catalina.out
