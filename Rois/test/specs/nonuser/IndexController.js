const assert = require('assert')

describe('申請ポータル画面', () => {
    beforeEach(() => {
        browser.url(browser.config.moduleURL)
    })
    it('画面のタイトルがTBRCで表示されること', () => {
        const title = browser.getTitle()
        assert.strictEqual(title, 'TBRC-JROIS(Joint-Research On-line Integrated System)')
    })
    it('ログイン画面に遷移できること', () => {
        const login_link = $('a=申請システムログイン')
        login_link.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.loginURL)
    })
    it('新規利用者情報登録画面に遷移できること', () => {
        const login_link = $('a=新規利用者情報登録')
        login_link.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.userinputURL+'?from=TBRC')
    })

    it('問い合わせメールアドレスが正しく表示されていること', () => {  
    })
    it('システム問い合わせメールアドレスが正しく表示されていること', () => {  
    })
    it('マニュアルが表示できること', () => {  
    })
    it('ドキュメントが表示できること', () => {  
    })
    it('お知らせの確認？', () => {  
    })
})
