teams=["中日","阪神","巨人","広島","ヤクルト","横浜","ソフトバンク","楽天","オリックス","ロッテ","日本ハム","西武"]
0.upto(11) do |idx|
    Team.create(
        name: "#{teams[idx]}"
    )
end