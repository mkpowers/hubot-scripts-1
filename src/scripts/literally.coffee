# Description:
#   This is literally the best Hubot script on Earth. Plays a random gif of Chris Traeger from Parks and Rec.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   literally
#
# Author:
#   mkpowers

module.exports = (robot) ->
  robot.hear /literally/i, (msg) ->
    images = [
      "http://24.media.tumblr.com/5526c1943d2f5506bcf492dc48a82b9c/tumblr_muu9wpBIOK1r64iyzo4_250.gif",
      "http://25.media.tumblr.com/dfedc9e0a9a9ce98e4ae09be3fb89eb5/tumblr_muu9wpBIOK1r64iyzo3_r2_250.gif",
      "http://25.media.tumblr.com/f60c54dcda07cc70d19310a0f5614fce/tumblr_muvdery85x1rn22aqo5_r2_250.gif",
      "http://25.media.tumblr.com/2b87008af23314cd00a1e5e1fe785953/tumblr_mtv8mmqeyQ1r6zm9ao2_250.gif",
      "http://24.media.tumblr.com/8cb626e01246cf69ffa73d102be085d5/tumblr_mt35wrztFy1qj8xp7o3_250.gif",
      "http://24.media.tumblr.com/cd9f428a7d4d8bde7806cdbd961deb6b/tumblr_msofv2ZO6M1rmcgvro2_250.gif",
      "http://25.media.tumblr.com/e7644974cc949b77abe67a2c2ffcb994/tumblr_msofv2ZO6M1rmcgvro1_250.gif",
      "http://24.media.tumblr.com/3573ea61acde27a73ac6e44f13efb679/tumblr_msofv2ZO6M1rmcgvro3_250.gif",
      "http://31.media.tumblr.com/3ee58135dd6b7237cb754dab80b35eff/tumblr_msofv2ZO6M1rmcgvro4_250.gif",
      "http://24.media.tumblr.com/70fa5d02da1aeef6dd700a4f6217b8c6/tumblr_msofv2ZO6M1rmcgvro5_250.gif",
      "http://31.media.tumblr.com/3230883a3930ba5256b8e0e35c1ec904/tumblr_msofv2ZO6M1rmcgvro6_250.gif",
      "http://25.media.tumblr.com/b9bbbcd37399a8412aa476b83178f4e1/tumblr_msddlchJJ01s84jfzo2_250.gif",
      "http://31.media.tumblr.com/d4eabfd3494826b42479507814a49a7c/tumblr_mrjqqzEZPI1swkc3ko1_400.png",
      "http://31.media.tumblr.com/5c9d3b727074e23c25edd7fffe350487/tumblr_mru81j8YNs1rkqdauo8_250.gif",
      "http://24.media.tumblr.com/094e3cc23b76bfefb1ba4e7e8a2c2049/tumblr_mrxnnfL0H11qmkpwho2_250.gif",
      "http://25.media.tumblr.com/dc4898b7779a63d5b3bbd9c877921fa0/tumblr_mrxwc1Arsk1rux0y2o3_250.gif",
      "http://24.media.tumblr.com/e5842bfa24c47db33cb84f5859446d22/tumblr_mrxyvrr1Ta1rux0y2o2_250.gif",
      "http://24.media.tumblr.com/07003f22b505769ad75f66c5ca7ba227/tumblr_mrgk9camUI1rli1a8o3_r1_250.gif",
      "http://25.media.tumblr.com/d582de69cbdb8139d69fd08bf311626c/tumblr_mpuxcdlE9G1qi7gxeo4_250.gif",
      "http://31.media.tumblr.com/8c14aa758cb4521e19105345a5361987/tumblr_mp6740hHYl1rwsd7jo2_250.gif",
      "http://25.media.tumblr.com/1e317619c017a7061ec738380961f70f/tumblr_moyje3B9CW1sufclco5_250.gif",
      "http://25.media.tumblr.com/76c60e596abffe98142715ca063c0684/tumblr_moyje3B9CW1sufclco9_250.gif",
      "http://31.media.tumblr.com/6417c01bd00597dcf7c5fcfe2a1eebff/tumblr_moyje3B9CW1sufclco3_250.gif",
      "http://31.media.tumblr.com/a505a07b5325bd1141066c7605f0aeab/tumblr_moyje3B9CW1sufclco6_250.gif",
      "http://25.media.tumblr.com/87e100abc0c5b752e07e25585bc1b431/tumblr_moyje3B9CW1sufclco8_250.gif",
      "http://24.media.tumblr.com/99b33305287309be6d83bfaa6c09712d/tumblr_moyje3B9CW1sufclco4_250.gif",
      "http://25.media.tumblr.com/b6c0fd36b4b20aa22d860d468b71a35a/tumblr_moh0imUS0K1qiaxzfo4_250.gif",
      "http://25.media.tumblr.com/87a3115b317e5ef1990348c42ceb13fc/tumblr_moib3kluuE1rkqdauo6_250.gif",
      "http://25.media.tumblr.com/f0971d51b85865005e0f5593142a3dde/tumblr_mo1602ylES1qghcyoo1_250.gif",
      "http://25.media.tumblr.com/a81403b0fb548f758d8a3ee591948985/tumblr_mm56twwbgw1qc71c1o6_r1_250.gif",
      "http://25.media.tumblr.com/42a9c938c5fb26a16233959378e54219/tumblr_mluflbisaA1ryanbvo1_250.gif",
      "http://25.media.tumblr.com/baca1d3a89d5a32b4b30617d5f1bd1d1/tumblr_mlkecgng791rufg6eo2_400.png",
      "http://31.media.tumblr.com/a2e0b5fdb2cf9a1d8f5bf34233858606/tumblr_mlptwvgA0O1qk7rkto3_250.gif",
      "http://24.media.tumblr.com/74758f8592ab3093fecffd712292419b/tumblr_ml3y41Njxs1qhpqtqo1_250.gif",
      "http://31.media.tumblr.com/9be628d6c0d7ca77d1b437c3c9182285/tumblr_mjprnya84R1rrfiwuo1_500.gif",
      "http://24.media.tumblr.com/tumblr_md6pifY4ua1r2rbmdo4_r1_250.gif",
      "http://25.media.tumblr.com/bc71924bbad795535a6c740c1570ac81/tumblr_mjj4z1wlh11s7bljzo3_250.gif",
      "http://24.media.tumblr.com/b1a6ff2db94daa2b02db441cb03b1c00/tumblr_mjojypO8dX1rkey39o1_400.gif",
      "http://25.media.tumblr.com/1ed2dfd6aca6f1977d1cf53065e5d45b/tumblr_mjow718R6a1s7bljzo1_250.gif",
      "http://24.media.tumblr.com/a510cf6761f73680478147d258a372fa/tumblr_mimzvqAMm11rrfiwuo5_250.gif",
      "http://24.media.tumblr.com/a11e61a3f195fc91025426244c2a0426/tumblr_mib7gmtqE01qfj0h5o3_400.gif",
      "http://25.media.tumblr.com/b063140513dff60815c8534df972424e/tumblr_mh42y0XYFO1s4nfv1o1_500.gif",
      "http://31.media.tumblr.com/84620748d3184511f5dc6b34e122fa35/tumblr_mh6k4kRPvN1rxy81ko2_r1_250.gif",
      ]
    msg.send msg.random images
