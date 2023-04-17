package net.seamlessly.step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.seamlessly.pages.BasePage;
import net.seamlessly.pages.SearchPage;
import net.seamlessly.utility.BrowserUtility;
import net.seamlessly.utility.Driver;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

public class SearchStepDefs extends BasePage  {

    SearchPage searchPage = new SearchPage();

    @When("user clicks the search button")
    public void user_clicks_the_search_button() {
        BrowserUtility.sleep(3);
        searchPage.searchButton.click();

    }

    @When("user types a file name")
    public void user_types_a_file_name() {
        BrowserUtility.sleep(2);
        searchPage.searchBox.sendKeys("Syftzr");
    }

    @Then("user can see details of the file on side page")
    public void user_can_see_details_of_the_file_on_side_page() {
        Assert.assertTrue(searchPage.sidePage.isDisplayed());
    }

    @And("user presses the enter key")
    public void userPressesTheEnterKey() {
        searchPage.searchBox.sendKeys(Keys.ENTER);
    }




    @Then("user can see the related contact")
    public void userCanSeeTheRelatedContact() {
    Assert.assertTrue(searchPage.fullName.isDisplayed());

    }

    @And("user types the contacts name")
    public void userTypesTheContactsName() {
        searchPage.searchBox.sendKeys("quentin");
    }

    @And("user clicks the contacts name on the dropdown menu")
    public void userClicksTheContactsNameOnTheDropdownMenu() {

    searchPage.firstResultList.click();

        BrowserUtility.sleep(5);
    }

    @And("user clicks the photos icon")
    public void userClicksThePhotosIcon() {
        searchPage.photos.click();
        BrowserUtility.sleep(5);

    }

    @Then("user can see the {string} file")
    public void userCanSeeTheFile (String file) {

WebElement uploadedPhoto= Driver.getDriver().findElement(By.xpath("//img[@alt='"+file+".jpg']"));
Assert.assertTrue(uploadedPhoto.isDisplayed());
//        String expectedFile = uploadedPicture;
//        String actualFile = uploadedPicture.uploadedFileOrFolder().getText();
//        Assert.assertEquals("file not uploaded", expectedFile, actualFile);

    }

    @When("User clicks seamlesslyIcon")
    public void userClicksSeamlesslyIcon() {
        WebElement seamlesslyIcon =Driver.getDriver().findElement(By.id("nextcloud"));

        seamlesslyIcon.click();

    }

    @Then("user navigates to dashboard page")
    public void userNavigatesToDashboardPage() {
        Assert.assertTrue(Driver.getDriver().getCurrentUrl().contains("dashboard"));
    }
}
