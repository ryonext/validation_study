module AccountsHelper
  def error_message(count)
    if count == 0
      "このユーザ名はすでに使われています。"
    elsif count == 1
      "このユーザ名も使われています。m9(^Д^)ﾌﾟｷﾞｬｰ"
    else
      "このユーザ名も使われています。ﾌﾟｯﾌﾟｷﾞｬｰｯ!!m9ﾟ｡(^Д^ﾟ≡｡ﾟ^Д^)m9ﾟ｡ﾌﾟｯﾌﾟｷﾞｬ-ｯ!!"
    end
  end
end
