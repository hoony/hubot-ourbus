# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.",
  "2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.",
  "3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law."
  ]

devRules = [
  "A developer may not injure Apple or, through inaction, allow Apple to come to harm.",
  "A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law.",
  "A developer must protect its own existence as long as such protection does not conflict with the First or Second Law."
  ]

ourbusRules = [
  "1. 우리는 팀원들이 자신의 능력을 사회에 기여하는데 쓰는 활동을 적극 지지하며 그를 통한 개인의 성장을 즐겁게 바라본다.",
  "2. 우리는 생산하는 모든 자료를 공유하며 CC BY 라이선스를 따른다.",
  "3. 우리는 비즈니스 모델과 무관하게 모든 사람들이 함께 하고싶은 매력적인 팀이 되도록 노력한다.",
  "4. 우리는 뒤 돌아서 할말을 남기지 않는다."
]

module.exports = (robot) ->
  robot.respond /(what are )?the (three |3 )?(rules|laws)/i, (msg) ->
    text = msg.message.text
    if text.match(/apple/i) or text.match(/dev/i)
      msg.send otherRules.join('\n')
    else if text.match(/ourbus/i)
      msg.send ourbusRules.join('\n')
    else
      msg.send rules.join('\n')
