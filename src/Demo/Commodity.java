package Demo;

import java.util.HashMap;

public class Commodity {
	private String name;
	private int num;
	private int price;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
}