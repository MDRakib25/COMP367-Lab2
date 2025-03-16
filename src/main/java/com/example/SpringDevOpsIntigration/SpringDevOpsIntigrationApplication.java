package com.example.SpringDevOpsIntigration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.time.LocalTime;

@SpringBootApplication
@RestController
public class SpringDevOpsIntigrationApplication {

	@GetMapping("/get")
	public String getMessage(@RequestParam(defaultValue = "MD Rakib") String name) {
		int currentHour = LocalTime.now().getHour();
		String greeting = (currentHour < 12) ? "Good morning" : "Good afternoon";
		return greeting + ", " + name + ", Welcome to COMP367";
	}

	public static void main(String[] args) {
		SpringApplication.run(SpringDevOpsIntigrationApplication.class, args);
	}

}
