package pl.jaknauczycsieprogramowania.aspectj;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AspectjApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(AspectjApplication.class, args);
	}

	@Override
	public void run(String... args) {
		User user = new User("Kamil");

		System.out.println(user.getName());
		System.out.println();

		System.out.println(user.isUserActive());
		System.out.println();


		Post post = new Post("Bardzo ciekawy odcinek");

		System.out.println(post.getBody());
		System.out.println();
	}
}
