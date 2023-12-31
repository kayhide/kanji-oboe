require 'erb'

template = ERB.new(File.read('view/problem.html.erb'))

class Kanji < Array
  def initialize(*xs)
    super(xs)
  end
end

class Okuri < Array
  def initialize(*xs)
    super(xs)
  end
end

@sentences = [
  Kanji.new(["県", "けん"], ["庁", "ちょう"]),
  "の",
  Kanji.new(["処", "しょ"], ["理", "り"]),
  "に",
  Kanji.new(["疑", "ぎ"], ["問", "もん"]),
  "があるので、",
  Kanji.new(["警", "けい"], ["察", "さつ"], ["官", "かん"]),
  "を",
  Okuri.new(["呼んで", "よんで"]),
  Kanji.new(["臨", "りん"], ["時", "じ"]),
  "の",
  Kanji.new(["対", "たい"], ["策", "さく"], ["班", "はん"]),
  "を",
  Kanji.new(["作", "つく"]),
  "って、",
  Kanji.new(["乱", "らん"], ["雑", "ざつ"]),
  "に",
  Kanji.new(["分", "ぶん"], ["担", "たん"]),
  "した。",
  Kanji.new(["映", "えい"], ["画", "が"]),
  "で",
  Kanji.new(["絹", "きぬ"]),
  "が",
  Kanji.new(["胸", "むね"]),
  "から",
  Kanji.new(["出", "で"]),
  "てきた",
  Kanji.new(["姿", "すがた"]),
  "が",
  Kanji.new(["忘", "わす"]),
  "れられなかったので、",
  Okuri.new(["危ない", "あぶない"]),
  Kanji.new(["裏", "うら"]),
  "の",
  Kanji.new(["展", "てん"]),
  "らん",
  Kanji.new(["会", "かい"]),
  "に",
  Kanji.new(["時", "じ"], ["刻", "こく"]),
  "を",
  Kanji.new(["見", "み"]),
  "ながら",
  Kanji.new(["入", "はい"]),
  "った。",
  Kanji.new(["権", "けん"], ["利", "り"]),
  "の",
  Kanji.new(["源", "みなもと"]),
  "は",
  Kanji.new(["若", "わか"], ["者", "もの"]),
  "を",
  Kanji.new(["敬", "うやま"]),
  "いながら",
  Kanji.new(["暮", "く"]),
  "らすことだ。",
  ]


puts template.result
