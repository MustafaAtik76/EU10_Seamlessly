package net.seamlessly.step_definitions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.seamlessly.pages.StatusPage;
import net.seamlessly.utility.BrowserUtility;
import net.seamlessly.utility.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.junit.Assert.*;

import java.util.LinkedList;
import java.util.List;

public class StatusStepDefs {

    StatusPage statusPage = new StatusPage();

    @When("user click the status module")
    public void user_click_the_status_module() {

        /*WebElement expand = Driver.getDriver().findElement(By.id("expand"));
        BrowserUtility.clickWithJS(expand);*/
        statusPage.userAvatar.click();
        statusPage.userStatus.click();

    }
    @When("user see the online status options")
    public void user_see_the_online_status() {

        System.out.println(statusPage.optionList.size());

      for (WebElement option : statusPage.optionList){
          BrowserUtility.sleep(2);
            System.out.println(option.getText().trim());
          BrowserUtility.sleep(2);
        }

    }

    @Then("user should see four status options")
    public void user_should_see_four_status_options() {
    assertTrue(statusPage.optionList.size()==4);
    }

    @When("user click the Away status option")
    public void user_click_the_status_option() {
        BrowserUtility.sleep(3);
        statusPage.userAvatar.click();
        statusPage.userStatus.click();
        BrowserUtility.sleep(3);
        statusPage.clearStatusButton.click();
        statusPage.userAvatar.click();
        statusPage.userStatus.click();
        BrowserUtility.sleep(3);
        statusPage.awayOption.click();
        BrowserUtility.sleep(3);
        statusPage.setStatusButton.click();
        statusPage.userAvatar.click();
    }

    @Then("user should see to changed the status")
    public void user_should_see_to_changed_the_status() {
        BrowserUtility.sleep(3);
        String actual = statusPage.userStatus.getText().trim();
        String expected = "Away";
        assertEquals(actual, expected);
    }

    @When("user click any option")
    public void user_click_any_option() {
        BrowserUtility.sleep(3);
        statusPage.userAvatar.click();
        statusPage.userStatus.click();
        BrowserUtility.sleep(3);
        statusPage.statusMessageOptions.click();
        statusPage.setStatusButton.click();
        BrowserUtility.sleep(3);
        statusPage.userAvatar.click();
    }

    @Then("user should see a message in placeholder of status message")
    public void user_should_see_a_message_in_placeholder_of_status_message() {
        String actual = statusPage.userStatus.getText();
        String expected = "Commuting";
        assertEquals(actual, expected);
    }

    @When("user writes the custom message")
    public void user_writes_the_custom_message() {

        statusPage.userAvatar.click();
        statusPage.userStatus.click();
        BrowserUtility.sleep(3);
        statusPage.clearStatusButton.click();
        statusPage.userAvatar.click();
        statusPage.userStatus.click();
        BrowserUtility.sleep(3);
    statusPage.messagePlace.sendKeys("Hello World"+ Keys.ENTER);
        statusPage.userAvatar.click();
    }
    @Then("user should see Hello World message")
    public void user_should_see_Hello_World_message() {

        String actual = statusPage.userStatus.getText();
        String expected = "Hello World";
        assertEquals(actual, expected);
    }

}
