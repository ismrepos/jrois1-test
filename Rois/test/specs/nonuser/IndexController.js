const assert = require('assert')

describe('申請ポータル画面', () => {
    beforeEach(() => {
        browser.url(browser.config.moduleURL)
    })
    it('画面のタイトルがTBRCで表示されること', () => {
        const title = browser.getTitle()
        assert.strictEqual(title, browser.config.serviceName)
    })
    it('ログイン画面に遷移できること', () => {
        const login_link = $('a=申請システムログイン')
        login_link.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.loginURL)
    })
    it('新規利用者情報登録画面に遷移できること', () => {
        const userinput_link = $('a=新規利用者情報登録')
        userinput_link.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.userinputURL+'?from=TBRC')
    })
    it('問い合わせメールアドレスが正しく表示されていること', () => {
        const contuct_us = $('#contact_us').getText()
        assert.ok(contuct_us.includes(browser.config.contactUsAddress.split('@')[0]))
        assert.ok(contuct_us.includes(browser.config.contactUsAddress.split('@')[1]))
    })
    it('システム問い合わせメールアドレスが正しく表示されていること', () => {
        const contuct_sys = $('#contact_sys').getText()
        assert.ok(contuct_sys.includes(browser.config.contactSysAddress.split('@')[0]))
        assert.ok(contuct_sys.includes(browser.config.contactSysAddress.split('@')[1]))
    })
    it('マニュアルが表示できること', () => {
        const manual_link = $('#system_manual')
        manual_link.click()
        assert.ok(browser.getUrl().includes(browser.config.manualFilename))
    })
    it('ドキュメントが表示できること', () => {
        const guide_link = $('#guide')
        guide_link.click()
        browser.pause(1000)
        browser.switchWindow(browser.config.guideFilename)
        assert.ok(browser.getUrl().includes(browser.config.guideFilename))
    })
})
