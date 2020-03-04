exports.config = {
    user: 'bsuser63807',
    key: process.env.BROWSERSTACK_LOCAL_IDENTIFIER,
    capabilities: [{
      browser: 'chrome',
      name: 'Bstack-[WebdriverIO] Sample Test'
    }],

    portalKikanName: '琉球大学熱帯生物圏研究センター',

    testAdmin: process.env.TESTADMIN,
    testAdminPasswd: process.env.TESTADMIN_PASSWD,
    testUser: process.env.TESTUSER,
    testUserPasswd: process.env.TESTUSER_PASSWD,

    contactUsAddress: 'knkuodor@acs.u-ryukyu.ac.jp',
    contactSysAddress: 'tbrc@ura3.c.ism.ac.jp',

    serviceName: 'TBRC-JROIS(Joint-Research On-line Integrated System)',
    manualFilename:'JROIS_manual.pdf',
    guideFilename:'guide2020.pdf',
    xPathChangeLang: '//body/header/nav/div[2]/div/ul[2]/li[2]/a',

    moduleURL: '/u-ryukyu/TBRC',
    loginURL: '/login',
    homeURL: '/home',
    userInputURL: '/userinput',
    userInfoURL: '/userinfo?pattern=1',
    passwdChangeURL: '/password/change',
    koboInputURL: '/register/offer',
    koboJohoURL: '/info/confirm',
    shinseiKensakuURL: '/application/search',
    shinseiDownloadURL: '/application/download',
    shinsaURL: '/register/audit',
    shinsaIkkatsuURL: '/register/batch',
    yosanURL: '/register/budget',
    yosanIkkatsuURL: '/budgetall',
    noticeURL: '/notification-search/input',
    noticeTemplateURL: '/notice/template/search',
    hyokaURL: '/evaluation',
    hyokaIkkatsuURL: '/register/eva/collective',
}