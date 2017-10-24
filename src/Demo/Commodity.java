package Demo;

import java.util.HashMap;

public class Commodity {
	public String name;
	public int num;
	public int price;
	public Commodity(String name, int num, int price) {
		this.name = name;
		this.num = num;
		this.price = price;
	}
	public String print() {
		if(num != 0) 
			return name + "\n\t..." + price +" * " + num + "\n";
		else
			return "";
	}
	public int sum() {
		return num * price;
	}
}