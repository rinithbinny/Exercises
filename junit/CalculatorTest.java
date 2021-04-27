package junit;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.Before;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CalculatorTest {
	
	Calculator c=new Calculator();	
	
	
	
	@Test
	void test() {
		assertEquals(3, c.add(1, 2));
		//assertEquals(0, c.sub(2, 2));
		//assertEquals(2, c.mul(1, 2));
	}

}
