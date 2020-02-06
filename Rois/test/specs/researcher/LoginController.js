const assert = require('assert')

describe('ログイン画面', () => {

    const userID = browser.config.testUser
    const userPassword = browser.config.testUserPasswd

    before(() => {
        browser.url(browser.config.moduleURL+browser.config.loginURL)
        const lang = $(browser.config.xPathChangeLang)
        if (lang.getText() == 'Japanese') { lang.click() }
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
