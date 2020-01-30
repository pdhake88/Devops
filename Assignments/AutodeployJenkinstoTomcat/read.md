I have installed Deploy to container plugin in Jenkins.
I have added user with these permissions in tomcat in tomcat-user.xml
<user username="admin" password="password" roles="admin,manager,admin-gui,admin-script,manager-gui,manager-script,manager-jmx,manager-status"/>
Then in jenkins project's post build action section, used deploy war/ear to container.
Above steps automated deployment in tomcat.
