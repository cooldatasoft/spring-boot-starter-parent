[![Build Status](https://travis-ci.org/cooldatasoft/spring-boot-starter-parent.svg?branch=develop)](https://travis-ci.org/cooldatasoft/spring-boot-starter-parent)


# How To Use

Declare this pom as the parent pom for your sprinboot project and thats almost everything you need. 


        <parent>
            <groupId>com.cooldatasoft</groupId>
            <artifactId>spring-boot-starter-parent</artifactId>
            <version>2.1.6.2.RELEASE</version>
        </parent>
        
        
##Automatically Added plugins

##### [maven-checkstyle-plugin](https://maven.apache.org/plugins/maven-checkstyle-plugin/index.html)

 
 Property                       | Default   | Description
 ---                            | ---       | ---
 checkstyle.consoleOutput       | true      | Prints output to console
 checkstyle.failOnViolation     | true      | Fails build if there are violations
 checkstyle.failsOnError        | true      | Fails build if there are errors
 
##### [maven-cucumber-reporting](https://github.com/damianszczepanik/maven-cucumber-reporting)
##### [maven-dependency-plugin](https://maven.apache.org/plugins/maven-dependency-plugin/)
##### [maven-enforcer-plugin](https://maven.apache.org/enforcer/maven-enforcer-plugin/)
##### [maven-failsafe-plugin](https://maven.apache.org/surefire/maven-failsafe-plugin/)
##### [maven-javadoc-plugin](https://maven.apache.org/plugins/maven-javadoc-plugin/)
##### [maven-jxr-plugin](https://maven.apache.org/jxr/maven-jxr-plugin/)
##### [maven-gpg-plugin](https://maven.apache.org/plugins/maven-gpg-plugin/)
##### [maven-pmd-plugin](https://maven.apache.org/plugins/maven-pmd-plugin/)
##### [maven-project-info-reports-plugin](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)
##### [maven-release-plugin](https://maven.apache.org/maven-release/maven-release-plugin/)
##### [maven-source-plugin](https://maven.apache.org/plugins/maven-source-plugin/)
##### [maven-surefire-plugin](https://maven.apache.org/surefire/maven-surefire-plugin/)

##### [build-helper-maven-plugin](https://www.mojohaus.org/build-helper-maven-plugin/index.html)
##### [dockerfile-maven-plugin](https://github.com/spotify/dockerfile-maven)
##### [findbugs-maven-plugin](https://gleclaire.github.io/findbugs-maven-plugin/)
##### [findbugs-maven-plugin](https://gleclaire.github.io/findbugs-maven-plugin/)
##### [jacoco-maven-plugin](https://www.eclemma.org/jacoco/trunk/doc/maven.html)
##### [spring-boot-maven-plugin](https://docs.spring.io/spring-boot/docs/current/maven-plugin/index.html)
##### [tidy-maven-plugin](https://www.mojohaus.org/tidy-maven-plugin/)



# Release
        
    mvn -DperformRelease=true clean deploy
        