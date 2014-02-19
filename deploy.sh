mvn clean package
cp ~/knowyourcandidate/codebase/kyc-mvc/target/kyc-mvc.war ~/apache-tomcat-7.0.42/webapps/
tail -f ~/apache-tomcat-7.0.42/logs/catalina.out
