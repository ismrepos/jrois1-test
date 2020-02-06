const assert = require('assert')

describe.skip('管理者ホーム画面', () => {

    before(() => {
        browser.url(browser.config.moduleURL+browser.config.loginURL)
        const adminID = browser.config.testAdmin
        const adminPassword = browser.config.testAdminPasswd    
        $('#username').setValue(adminID);
        $('#password').setValue(adminPassword);
        $('button=ログイン').click();
    })

    it('管理者向けメニュー項目が表示されること', () => {
        const menuGroup = $$('.group')
        assert.strictEqual(menuGroup[0].$$('li')[0].$('a').getText(), '利用者情報')
        assert.strictEqual(menuGroup[0].$$('li')[1].$('a').getText(), 'パスワード変更')
        assert.strictEqual(menuGroup[1].$$('li')[0].$('a').getText(), '公募登録')
        assert.strictEqual(menuGroup[1].$$('li')[1].$('a').getText(), '公募情報確認')
        assert.strictEqual(menuGroup[2].$$('li')[0].$('a').getText(), '申請状況検索')
        assert.strictEqual(menuGroup[3].$$('li')[0].$('a').getText(), '申請書ダウンロード')
        assert.strictEqual(menuGroup[3].$$('li')[1].$('a').getText(), '審査結果登録')
        assert.strictEqual(menuGroup[3].$$('li')[2].$('a').getText(), '審査結果一括登録')
        assert.strictEqual(menuGroup[3].$$('li')[3].$('a').getText(), '予算配分額登録')
        assert.strictEqual(menuGroup[3].$$('li')[4].$('a').getText(), '予算配分額一括登録')
        assert.strictEqual(menuGroup[4].$$('li')[0].$('a').getText(), 'お知らせ検索')
        assert.strictEqual(menuGroup[4].$$('li')[1].$('a').getText(), '通知テンプレート検索')
        assert.strictEqual(menuGroup[5].$$('li')[0].$('a').getText(), '個人評価登録')
        assert.strictEqual(menuGroup[5].$$('li')[1].$('a').getText(), '個人評価一括登録')
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

    it.skip('研究種別一覧の「申請情報登録」ボタンが表示されないこと', () => {
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
    it('公募登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=公募登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.koboInputURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('公募情報確認画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=公募情報確認')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.koboJohoURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('申請状況検索画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=申請状況検索')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.shinseiKensakuURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('申請書ダウンロード画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=申請書ダウンロード')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.shinseiDownloadURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('審査結果登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=審査結果登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.shinsaURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('審査結果一括登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=審査結果一括登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.shinsaIkkatsuURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('予算配分額登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=予算配分額登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.yosanURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it.skip('予算配分額一括登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=予算配分額一括登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.yosanIkkatsuURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('お知らせ検索登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=お知らせ検索')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.noticeURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('通知テンプレート検索登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=通知テンプレート検索')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.noticeTemplateURL)
        $('button=戻る').click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it.skip('個人評価登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=個人評価登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.hyokaURL)
        const back = $('button=戻る')
        back.scrollIntoView()
        back.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
    it('個人評価一括登録画面に遷移後、ホーム画面に戻れること', () => {
        const target = $('a=個人評価一括登録')
        target.scrollIntoView()
        target.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.hyokaIkkatsuURL)
        const back = $('button=戻る')
        back.scrollIntoView()
        back.click()
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.homeURL)
    })
})
