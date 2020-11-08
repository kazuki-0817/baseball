fnames=["佐藤","鈴木","高橋","田中"]
gnames=["太郎","次郎","花子"]
mnames=["tarou","jirou","hanako"]
teams=[1,2,3]
0.upto(9) do |idx|
    User.create(
        username: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
        email: "#{mnames[idx % 3]}#{idx}@example.com",
        profile: "",
        team_id: teams[idx % 3],
        password: "baseball!",
        password_confirmation: "baseball!"
    )
end