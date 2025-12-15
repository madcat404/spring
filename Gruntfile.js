'use strict';
module.exports = function(grunt) {
    grunt.initConfig({
        'pkg' : grunt.file.readJSON('package.json'),
        'clean': [
            'src/main/resources/static/build/*'
        ],
        'uglify' : {
            lib : {
                src : [
                    'src/main/resources/static/vendor/underscore/underscore.js',
                    'src/main/resources/static/vendor/moment/min/moment.min.js'
                ],
                dest : 'src/main/resources/static/product/js/lib.min.js'
            },
            common : {
                src : [
                    'src/main/resources/static/js/common.js'
                ],
                dest : 'src/main/resources/static/product/js/common.min.js'
            },
            bet : {
                src : [
                    'src/main/resources/static/js/Controller/service/BetController.js'
                ],
                dest : 'src/main/resources/static/product/js/BetController.min.js'
            },
            community : {
                src : [
                    'src/main/resources/static/js/Controller/service/CommunityController.js'
                ],
                dest : 'src/main/resources/static/product/js/CommunityController.min.js'
            },
            center : {
                src : [
                    'src/main/resources/static/js/Controller/service/CustomerCenterController.js'
                ],
                dest : 'src/main/resources/static/product/js/CustomerCenterController.min.js'
            },
            inbox : {
                src : [
                    'src/main/resources/static/js/Controller/service/InboxController.js'
                ],
                dest : 'src/main/resources/static/product/js/InboxController.min.js'
            },
            money : {
                src : [
                    'src/main/resources/static/js/Controller/service/MoneyController.js'
                ],
                dest : 'src/main/resources/static/product/js/MoneyController.min.js'
            },
            preMatchBet : {
                src : [
                    'src/main/resources/static/js/Controller/sports/pc/PreMatchBetController.js'
                ],
                dest : 'src/main/resources/static/product/js/PreMatchBetController.min.js'
            },
            mPreMatchBet : {
                src : [
                    'src/main/resources/static/js/Controller/sports/mobile/MobilePreMatchBetController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobilePreMatchBetController.min.js'
            },
            preMatchFavorite : {
                src : [
                    'src/main/resources/static/js/Controller/sports/pc/PreMatchFavoriteController.js'
                ],
                dest : 'src/main/resources/static/product/js/PreMatchFavoriteController.min.js'
            },
            mPreMatchFavorite : {
                src : [
                    'src/main/resources/static/js/Controller/sports/mobile/MobilePreMatchFavoriteController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobilePreMatchFavoriteController.min.js'
            },
            preMatchSpecialBet : {
                src : [
                    'src/main/resources/static/js/Controller/sports/pc/PreMatchSpecialBetController.js'
                ],
                dest : 'src/main/resources/static/product/js/PreMatchSpecialBetController.min.js'
            },
            mPreMatchSpecialBet : {
                src : [
                    'src/main/resources/static/js/Controller/sports/mobile/MobilePreMatchSpecialBetController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobilePreMatchSpecialBetController.min.js'
            },
            beBaseball : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/pc/BeteastBaseballGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/BeteastBaseballGameController.min.js'
            }
            ,
            mBeBaseball : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/mobile/MobileBeteastBaseballGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobileBeteastBaseballGameController.min.js'
            },
            beSoccer : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/pc/BeteastSoccerGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/BeteastSoccerGameController.min.js'
            },
            mBeSoccer : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/mobile/MobileBeteastSoccerGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobileBeteastSoccerGameController.min.js'
            },
            powerBall : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/pc/PowerBallGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/PowerBallGameController.min.js'
            },
            mPowerBall : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/mobile/MobilePowerBallGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobilePowerBallGameController.min.js'
            },
            powerLadder : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/pc/NtryPowerLadderGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/NtryPowerLadderGameController.min.js'
            },
            mPowerLadder : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/mobile/MobileNtryPowerLadderGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobileNtryPowerLadderGameController.min.js'
            },
            kenoLadder : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/pc/NtryKenoLadderGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/NtryKenoLadderGameController.min.js'
            },
            mKenoLadder : {
                src : [
                    'src/main/resources/static/js/Controller/minigame/mobile/MobileNtryKenoLadderGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobileNtryKenoLadderGameController.min.js'
            },
            bvs : {
                src : [
                    'src/main/resources/static/js/Controller/virtual/pc/Bet365VirtualSoccerGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/Bet365VirtualSoccerGameController.min.js'
            },
            mBVS : {
                src : [
                    'src/main/resources/static/js/Controller/virtual/mobile/MobileBet365VirtualSoccerGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobileBet365VirtualSoccerGameController.min.js'
            },
            bRacing : {
                src : [
                    'src/main/resources/static/js/Controller/virtual/pc/Bet365VirtualRacingGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/Bet365VirtualRacingGameController.min.js'
            },
            mBRacing : {
                src : [
                    'src/main/resources/static/js/Controller/virtual/mobile/MobileBet365VirtualRacingGameController.js'
                ],
                dest : 'src/main/resources/static/product/js/MobileBet365VirtualRacingGameController.min.js'
            },
            join : {
                src : [
                    'src/main/resources/static/js/Controller/site/JoinController.js'
                ],
                dest : 'src/main/resources/static/product/js/JoinController.min.js'
            },
            site : {
                src : [
                    'src/main/resources/static/js/Controller/site/SiteController.js'
                ],
                dest : 'src/main/resources/static/product/js/SiteController.min.js'
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.registerTask('default', ['clean', 'uglify']);
};
