module AccountsHelper
  def error_message(count)
    if count == 0
      "このユーザ名はすでに使われています。"
    elsif count == 1
      "このユーザ名も使われています。m9(^Д^)ﾌﾟｷﾞｬｰ"
    else
      "このユーザ名も使われていますwww<br>#{image_tag 'donna_kimochi.png'}"
    end
  end
end
