module AccountsHelper
  def error_message(count)
    if count == 1
      "このユーザ名はすでに使われています。"
    elsif count == 2
      "このユーザ名も使われています。m9(^Д^)ﾌﾟｷﾞｬｰ"
    else
      "このユーザ名も使われてまーすwww<br>#{image_tag 'donna_kimochi.png'}"
    end
  end
end
