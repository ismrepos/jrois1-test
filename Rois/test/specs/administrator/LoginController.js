const assert = require('assert')

describe('ログイン画面', () => {

    const adminID = browser.config.testAdmin
    const adminPassword = browser.config.testAdminPasswd

    before(() => {
        browser.url(browser.config.moduleURL+browser.config.loginURL)
        const lang = $(browser.config.xPathChangeLang)
        if (lang.getText() == 'Japanese') { lang.click() }
    })

    it('管理者アカウントにログインできること', () => {
        $('#username').setValue(adminID);
        $('#password').setValue(adminPassword);
        $('button=ログイン').click();
        const allCookies = browser.getCookies()
        console.log(allCookies);
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('管理者権限のメニュー項目が表示されること', () => {
        const sidebarTitle = $$('.sidebar-title')
        assert.strictEqual(sidebarTitle[0].getText(), 'メニュー')
        assert.strictEqual(sidebarTitle[1].getText(), '事務担当者メニュー')
        assert.strictEqual(sidebarTitle[2].getText(), '審査委員メニュー')
    })
})
