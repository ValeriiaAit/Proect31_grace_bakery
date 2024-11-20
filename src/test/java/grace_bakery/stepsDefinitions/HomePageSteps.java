package grace_bakery.stepsDefinitions;

import grace_bakery.pages.HomePage;
import io.cucumber.java.en.Given;

import static grace_bakery.core.BasePage.driver;

public class HomePageSteps {
    @Given("User launches the browser")
    public void userLaunchesBrowser() {
        new HomePage(driver).launchBrowser();
    }
}