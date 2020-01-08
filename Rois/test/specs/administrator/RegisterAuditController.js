const assert = require('assert')

describe('審査結果登録画面', () => {
    browser.url(browser.config.moduleURL+browser.config.loginURL)

    //基本動作
    it('管理者アカウントで審査結果登録画面に遷移できること', () => {
    })

    it('戻るでホーム画面に遷移できること', () => {
    })

    it('公募年度,研究種別,検索->成功', () => {  
    })

    it('検索結果表示確認', () => {
    })

    //検索動作詳細
    it('検索パターンA', () => {
    })

    it('検索パターンB', () => {
    })

    it('検索パターンC', () => {
    })
    
    it('検索パターンD', () => {
    })

    //エラーケース
    it('公募年度検索->エラーケース', () => {
    })

    it('研究種別検索->エラーケース', () => {
    })

    it('検索結果無し', () => {
    })


})
