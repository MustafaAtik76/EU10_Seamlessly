package net.seamlessly.step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.seamlessly.pages.LoginPage;
import net.seamlessly.utility.BrowserUtility;
import net.seamlessly.utility.ConfigurationReader;
import net.seamlessly.utility.Driver;
import org.junit.Assert;
import org.openqa.selenium.Keys;

public class Login_step_definitions {
    LoginPage loginPage = new LoginPage();

    @Given("user is on the login page")
    public void userIsOnTheHomePage() {
        Driver.getDriver().get(ConfigurationReader.getProperty("URL"));
    }


    @Then("user can see dashboard")
    public void userCanSeeDashboard() {
        Assert.assertTrue(Driver.getDriver().getTitle().toLowerCase().contains("dashboard"));
    }

    @When("user can click login button")
    public void userCanClickLoginButton() {
        loginPage.loginButton.click();
    }

    @When("user can write valid username")
    public void userCanWriteValidUsername() {
        loginPage.userName.sendKeys("Employee170");
    }

    @And("user can write valid password")
    public void userCanWriteValidPassword() {
        loginPage.inputPassword.sendKeys("Employee123");
    }

    @When("user can press enter key")
    public void userCanPressEnterKey() {
        loginPage.inputPassword.click();
        loginPage.inputPassword.sendKeys(Keys.ENTER);
    }

    @When("user can write invalid username {string}")
    public void userCanWriteInvalidUsername(String username) {
        loginPage.userName.sendKeys(username);
    }

    @When("user can write invalid password {string}")
    public void userCanWriteInvalidPassword(String password) {
        loginPage.inputPassword.sendKeys(password);
    }

    @Then("user cannot see dashboard and sees the notice wrong message")
    public void userCannotSeeDashboardAndSeesTheNoticeWrongMessage() {
        Assert.assertEquals(loginPage.wrongPassword.getText(), "Wrong username or password.");
    }

    @Then("user cannot see dashboard and sees the notice blank message")
    public void userCannotSeeDashboardAndSeesTheNoticeBlankMessage() {
        if (loginPage.userName.getAttribute("value").isEmpty()) {
            Assert.assertEquals(loginPage.userName.getAttribute("validationMessage"), "Please fill out this field.");
        }
        if (loginPage.inputPassword.getAttribute("value").isEmpty()) {
            Assert.assertEquals(loginPage.inputPassword.getAttribute("validationMessage"), "Please fill out this field.");
        }
    }

    @Then("user can see the password in a form of dots")
    public void userCanSeeThePasswordInAFormOfDots() {
        if (loginPage.inputPassword.getAttribute("type").equals("password")) {
            Assert.assertEquals(loginPage.inputPassword.getAttribute("value"), "Employee123");
        }
    }

    @And("User can click to toggle button")
    public void userCanClickToToggleButton() {
        loginPage.passwordEye.click();
    }

    @Then("User can see the password")
    public void userCanSeeThePassword() {
        Assert.assertEquals(loginPage.inputPassword.getAttribute("value"), "Employee123");
    }

    @Then("user can see the Forgot password link")
    public void userCanSeeTheForgotPasswordLink() {
        Assert.assertTrue(loginPage.forgotPassword.isDisplayed());
    }

    @And("User can click Forgot password link")
    public void userCanClickForgotPasswordLink() {
        loginPage.forgotPassword.click();
        BrowserUtility.sleep(2);
    }

    @Then("user can see reset password link")
    public void userCanSeeResetPasswordLink() {
        Assert.assertTrue(loginPage.resetPassword.isDisplayed());
    }

    @Then("user can see username placeholder")
    public void userCanSeeUsernamePlaceholder() {
        Assert.assertEquals(loginPage.userName.getAttribute("placeholder"), "Username or email");
    }

    @Then("user can see password placeholder")
    public void userCanSeePasswordPlaceholder() {
        Assert.assertEquals(loginPage.inputPassword.getAttribute("placeholder"), "Password");
    }

}
