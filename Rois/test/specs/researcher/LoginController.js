const assert = require('assert')

describe('ログイン画面', () => {
    browser.url(browser.config.moduleURL+browser.config.loginURL)

    const userID = browser.config.testUser
    const userPassword = browser.config.testUserPasswd

    before(() => {
        const lang = $(browser.config.xPathChangeLang).getText()
        if (lang == 'Japanese') { lang.click() }
    })

    it('研究者アカウントにログインできること', () => {
        $('#username').setValue(userID);
        $('#password').setValue(userPassword);
        $('button=ログイン').click();
        const allCookies = browser.getCookies()
        console.log(allCookies);
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('研究者権限のメニュー項目が表示されること', () => {
        const sidebarTitle = $('.sidebar-title')
        assert.strictEqual(sidebarTitle.getText(), 'メニュー')
    })
})
