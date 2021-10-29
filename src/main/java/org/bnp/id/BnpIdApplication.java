package org.bnp.id;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories("org.bnp.id.repo")
@EntityScan("org.bnp.id.model")
@SpringBootApplication
public class BnpIdApplication {

	public static void main(String[] args) {
		SpringApplication.run(BnpIdApplication.class, args);
	}

}
