package grace_bakery.stepsDefinitions;

import grace_bakery.pages.LoginPage;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

import static grace_bakery.core.BasePage.driver;

public class LoginPageSteps {

    @And("The user enters valid data")
    public void userEntersValidData(){
        new LoginPage(driver).enterData("test_qa@gmail.com","Password@1");

    }

    @Then("The user checks the display of successful login message")
    public void theUserChecksTheDisplayOfSuccessfulLoginMessage(){
        new LoginPage(driver).verifyTextMessage("Logged in success");
    }

    @And("The user enters valid email and invalid password")
        public void userEntersValidEmailAndInvalidPassword(DataTable table){
            new LoginPage(driver).enterData(table);
    }

    @Then("The user checks the display of unsuccessful login message")
    public void theUserChecksTheDisplayOfUnsuccessfulLoginMessage(){
        new LoginPage(driver).verifyTextMessage("\"Login or Password is incorrect\"");
    }

}
