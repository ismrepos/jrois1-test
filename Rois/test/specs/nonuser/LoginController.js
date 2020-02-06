const assert = require('assert')

describe('ログイン画面', () => {

    before(() => {
        browser.url(browser.config.moduleURL+browser.config.loginURL)
        const lang = $(browser.config.xPathChangeLang).getText()
        if (lang == 'Japanese') { lang.click() }
    })

    it('非ユーザーはログインできないこと', () => {
        $('#username').setValue('notuser');
        $('#password').setValue('password');
        $('button=ログイン').click();
        assert.strictEqual(browser.getUrl(), browser.config.baseUrl+browser.config.moduleURL+browser.config.loginURL)
    })
    it('ログイン失敗のメッセージが表示されること', () => {
        const alert = $(".alert-danger")
        assert.strictEqual(alert.getText(), '入力したユーザー名またはパスワードが正しくありません。入力し直してください。')
    })
})
