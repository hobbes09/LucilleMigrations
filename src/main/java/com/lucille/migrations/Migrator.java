package com.lucille.migrations;

import org.flywaydb.core.Flyway;

public class Migrator {
    public static void main(String[] args) {
        // Create the Flyway instance
        Flyway flyway = new Flyway();

        // Point it to the database
        flyway.setDataSource("jdbc:postgresql://" + AppConfig.DB_HOST + ":" + AppConfig.DB_PORT + "/" + AppConfig.DB_NAME, AppConfig.DB_USER, AppConfig.DB_PASSWORD);

        // Start the migration
        flyway.migrate();
    }
}

// mvn package exec:java -Dexec.mainClass=com.lucille.migrations.Migrator