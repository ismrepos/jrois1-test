const assert = require('assert')

describe('管理者ホーム画面', () => {
    browser.url(browser.config.moduleURL+browser.config.loginURL)

    const adminID = browser.config.testAdmin
    const adminPassword = browser.config.testAdminPasswd

    it('管理者アカウントでホーム画面に遷移できること', () => {
        $('#username').setValue(adminID);
        $('#password').setValue(adminPassword);
        $('button=ログイン').click();
        const allCookies = browser.getCookies()
        console.log(allCookies);
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })

    it('お知らせテーブル表示確認', () => {  
    })

    it('公募一覧テーブル表示確認', () => {
    })

    it('モーダル動作確認', () => {
    })

    it('メニュー動作確認', () => {
    })

})
