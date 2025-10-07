package com.topsify.cli;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;

public class Main {
    private static Path fileName = Paths.get( "reports/users.json");;
    public static void main(String[] args) throws IOException {

        System.out.println("Hello World!");
//        fileName = Paths.get("src", "data", "reports/users.json");
        var allJSONs = Files.readAllLines(fileName);
        var test = allJSONs.get(2);
        var tested = test.split(":")[1];

        System.out.println(test);
        System.out.println(allJSONs);
        System.out.println(test);
//        INSERT INTO users VALUES(1,'Sally_Kunde','Sally','Kunde','Sally.Kunde49@yahoo.com','https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/730.jpg','MNkcfO7qfSqzJl5');
        var sqlstatement = ("INSERT INTO users VALUES("+allJSONs.get(2).split(":")[1]+allJSONs.get(3).split(":")[1]+allJSONs.get(4).split(":")[1] + allJSONs.get(5).split(":")[1]+allJSONs.get(6).split(":")[1]+allJSONs.get(7).split(":")[1]+allJSONs.get(7).split(":")[2]+allJSONs.get(8).split(":")[1]+")");
        System.out.println(sqlstatement);
        System.out.println((tested));
    }
}
