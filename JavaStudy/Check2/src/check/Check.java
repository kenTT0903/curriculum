package check;

import constants.Constants;

public class Check {

 private static String firstName = "健太";
 private static String lastName = "杉浦";


 private static void printName(String firstName, String lastName) {
	 System.out.println(lastName + firstName);
}
 
	public static void main(String[] args) {
		
		Pet pet = new Pet(Constants.CHECK_CLASS_JAVA,Constants.CHECK_CLASS_HOGE);
		RobotPet robopet = new RobotPet(Constants.CHECK_CLASS_R2D2, Constants.CHECK_CLASS_LUKE);
		
		System.out.print("printNameメソッド → ");
		Check.printName(firstName, lastName);
		pet.introduce();
		robopet.introduce();
	}
	
}