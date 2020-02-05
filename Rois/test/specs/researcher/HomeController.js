const assert = require('assert')

describe('研究者ホーム画面', () => {

    before(() => {
        browser.url(browser.config.moduleURL+browser.config.loginURL)
        const userID = browser.config.testUser
        const userPassword = browser.config.testUserPasswd
        $('#username').setValue(userID);
        $('#password').setValue(userPassword);
        $('button=ログイン').click();
    })

    it('研究者向けメニュー項目が表示されること', () => {
        const menuGroup = $('.group')
        assert.strictEqual(menuGroup.$$('li')[0].$('a').getText(), '利用者情報')
        assert.strictEqual(menuGroup.$$('li')[1].$('a').getText(), 'パスワード変更')
    })
    it('お知らせテーブルが正しく表示されること', () => {
        const noticeList = $$('#dblist')[0]
        assert.strictEqual(noticeList.$('a').getText(), 'お知らせタイトルです')
    })

    it('研究種別一覧テーブルが正しく表示されること', () => {
        assert.strictEqual($('#child_0').$$('td')[1].getText(), browser.config.portalKikanName)
        assert.strictEqual($('#child_0').$$('td')[2].getText(), '一般研究')
        assert.strictEqual($('#child_1').$$('td')[1].getText(), browser.config.portalKikanName)
        assert.strictEqual($('#child_1').$$('td')[2].getText(), '共同研究(海外機関)')
        assert.strictEqual($('#child_2').$$('td')[1].getText(), browser.config.portalKikanName)
        assert.strictEqual($('#child_2').$$('td')[2].getText(), '共同研究(若手)')
        assert.strictEqual($('#child_3').$$('td')[1].getText(), browser.config.portalKikanName)
        assert.strictEqual($('#child_3').$$('td')[2].getText(), '共同利用研究会')
        assert.strictEqual($('#child_4').$$('td')[1].getText(), browser.config.portalKikanName)
        assert.strictEqual($('#child_4').$$('td')[2].getText(), '共同研究')
    })

    it.skip('研究種別一覧の折りたたみが展開できること', () => {
        assert.strictEqual('', '')
    })

    it.skip('研究種別一覧の「承諾書様式ダウンロード」ボタンがクリックできないこと', () => {
        assert.strictEqual('', '')
    })

    it.skip('研究種別一覧の「申請情報登録」ボタンが表示されること', () => {
        assert.strictEqual('', '')
    })

    it.skip('課題一覧テーブルが正しく表示されること', () => {
        assert.strictEqual('', '')
    })

    it('利用者情報画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=利用者情報')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.userInfoURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })

    it('パスワード変更画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=パスワード変更')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.passwdChangeURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
})
