package grace_bakery.pages;

import grace_bakery.core.BasePage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage extends BasePage {
    public HomePage(WebDriver driver) {
        super(driver);
    }

    public void openHomePage() {
        driver.get("http://localhost:8080/");
    }


    @FindBy(xpath = "//h1[contains(text(),'***')]")
    WebElement homePageTitle;
    public boolean isHomePageTitlePresent() {
        return isElementPresent(homePageTitle);
    }

    public void quitBrowser() {
        driver.quit();
    }


    @FindBy(xpath = "//a[.='***']")
    WebElement loginLink;

    public LoginPage clickOnLoginLink(){
        click(loginLink);
        return new LoginPage(driver);
    }
}
