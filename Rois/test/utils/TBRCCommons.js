const path = require('path')
const fs = require('fs')

const loginAdmin = function (browser) {
    browser.url(browser.config.moduleURL+browser.config.loginURL)
    changeLang(browser)
    const adminID = browser.config.testAdmin
    const adminPassword = browser.config.testAdminPasswd    
    $('#username').setValue(adminID)
    $('#password').setValue(adminPassword)
    $('button=ログイン').click()
}

const loginResearcher = function (browser) {
  browser.url(browser.config.moduleURL+browser.config.loginURL)
  changeLang(browser)
  const userID = browser.config.testUser
  const userPassword = browser.config.testUserPasswd
  $('#username').setValue(userID);
  $('#password').setValue(userPassword)
  $('button=ログイン').click()
}

const changeLang = function (browser) {
  const lang = $(browser.config.xPathChangeLang)
  if (lang.getText() == 'Japanese') { lang.click() }
}

const downloadFileName = function (type, inputYear, syubetsu) {
    var today = new Date(new Date().toLocaleString({ timeZone: 'Asia/Tokyo' }))
    return type
      +'_'+inputYear
      +'_'+syubetsu
      +'_'+today.getFullYear()+('0' + (today.getMonth() + 1)).slice(-2)+('0' + today.getDate()).slice(-2)
      +'.csv'
}

const waitForFileExists = function (filePath, timeout) {
    return new Promise(function (resolve, reject) {
  
      var timer = setTimeout(function () {
        watcher.close()
        reject(new Error('File did not exists and was not created during the timeout.'));
      }, timeout)
  
      fs.access(filePath, fs.constants.R_OK, function (err) {
        if (!err) {
          clearTimeout(timer);
          watcher.close();
          resolve();
        }
      })
  
      var dir = path.dirname(filePath);
      var basename = path.basename(filePath);
      var watcher = fs.watch(dir, function (eventType, filename) {
        if (eventType === 'rename' && filename === basename) {
          clearTimeout(timer)
          watcher.close()
          resolve()
        }
      })
    })
}

const selectedValue = function (selectObj) {
    for(var i = 0; i < selectObj.length; i++) {
        if (selectObj[i].isSelected()) {
            return selectObj[i].getValue()
        }
    }
    return ''
}

module.exports = {
    loginAdmin,
    loginResearcher,
    changeLang,
    downloadFileName,
    waitForFileExists,
    selectedValue,
}