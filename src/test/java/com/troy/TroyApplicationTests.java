package com.troy;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;

import com.troy.domain.Catalog;
import com.troy.repository.CatalogRepository;

@RunWith(SpringRunner.class)
@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class TroyApplicationTests {
	@Autowired
	private TestEntityManager entityManager;
	@Autowired
	private CatalogRepository repository;
	@Test
	public void testExample() throws Exception {
		Catalog catalog = new Catalog();
		catalog.setCatalogName("catalog11");
		catalog.setCatalogDesc("tesing catalog11  data entry");
		catalog.setCatalogImage("testing catalog11 image");
		this.entityManager.persist(catalog);
		Catalog catalog1 = this.repository.findBycatalogName("catalog11");
		assertThat(catalog1.getCatalogName()).isEqualTo("catalog11");
		assertThat(catalog1.getCatalogDesc()).isEqualTo("tesing catalog11  data entry");
		assertThat(catalog1.getCatalogImage()).isEqualTo("testing catalog11 image");
	}

}