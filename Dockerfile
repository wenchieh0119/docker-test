# 使用 Tomcat 基礎映像
FROM tomcat:9.0.89

# 複製 WAR 檔案到 Tomcat webapps 目錄
COPY test004.war /usr/local/tomcat/webapps/

# 複製 MySQL JDBC 驅動到 Tomcat lib 目錄
COPY mysql-connector-java-8.0.16.jar /usr/local/tomcat/lib/

# 暴露 Tomcat 預設的運行端口
EXPOSE 8080

# 啟動 Tomcat
CMD ["catalina.sh", "run"]
