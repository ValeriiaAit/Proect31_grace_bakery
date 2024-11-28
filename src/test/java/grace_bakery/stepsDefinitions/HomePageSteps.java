package grace_bakery.stepsDefinitions;

import grace_bakery.pages.HomePage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

import static grace_bakery.core.BasePage.driver;

public class HomePageSteps {
    @Given("User launches the browser")
    public void userLaunchesBrowser() {
        new HomePage(driver).launchBrowser();
    }

    @When("User opens the Home page grace_bakery")
    public void userOpensTheHomePageGrace_bakery() {
        new HomePage(driver).openHomePage();
    }

    @Then("Check that the title Home page is opened")
    public void checkThatTheTitleHomePageIsOpened() {
        Assert.assertTrue(new HomePage(driver).isHomePageTitlePresent());
    }

    @And("User closes the browser")
    public void userClosesTheBrowser() {
        new HomePage(driver).quitBrowser();
    }

    @And("The user clicks on Login Link")
    public void userClicksOnLoginLink() {
        new HomePage(driver).clickOnLoginLink();
    }

    @And("User clicks on a button Login")
    public void userClicksOnAButtonLogin() {
        new HomePage(driver).clickOnLoginLink();
    }
}