# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. 우리는 팀원들이 자신의 능력을 사회에 기여하는데 쓰는 활동을 적극 지지하며 그를 통한 개인의 성장을 즐겁게 바라본다.",
  "2. 우리는 생산하는 모든 자료를 공유하며 CC BY 라이선스를 따른다.",
  "3. 우리는 비즈니스 모델과 무관하게 모든 사람들이 함께 하고싶은 매력적인 팀이 되도록 노력한다.",
  "4. 우리는 뒤 돌아서 할말을 남기지 않는다."
  ]

module.exports = (robot) ->
  robot.respond /(what are )?the (three |3 )?(rules|laws)/i, (msg) ->
    text = msg.message.text
    msg.send rules.join('\n');
    # if text.match(/apple/i) or text.match(/dev/i)
    #   msg.send devRules.join('\n')
    # else if text.match(/ourbus/i)
    #   msg.send ourbusRules.join('\n')
    # else
    #   msg.send rules.join('\n')
  robot.respond '눈뜨면', (msg) ->
    msg.send '도착!';
