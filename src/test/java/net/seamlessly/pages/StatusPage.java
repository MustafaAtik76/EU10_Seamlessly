package net.seamlessly.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class StatusPage extends BasePage{

    @FindBy(css = "div.set-status-modal__online-status>div>label")
    public List<WebElement> optionList;

    @FindBy(id= "expand")
    public WebElement menu;

    @FindBy(xpath = "//div[@class='user-status-online-select']")
    public WebElement statusOptions;

    @FindBy(xpath = "//div[@class='user-status-online-select'][2]")
    public WebElement awayOption;

    @FindBy(xpath = "//div[@class='status-buttons']")
    public WebElement setStatusButton;

    @FindBy(xpath = "//button[@class='button-vue button-vue--text-only button-vue--vue-tertiary button-vue--wide']")
    public WebElement clearStatusButton;


    @FindBy(xpath = "//div[@class='predefined-status'][2]")
    public WebElement statusMessageOptions;

    @FindBy(xpath = "//input[@placeholder='What is your status?']")
    public WebElement messagePlace;



}
