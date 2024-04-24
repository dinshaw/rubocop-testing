class MyTestClass
  def foo
    [ :client, :bot_pusher, :token_fetcher, :user_id_fetcher, :conversation_fetcher, :salutation ]
  end

  def bar
    redirect_to(
      [
        "https://login.microsoftonline.com/common/adminconsent?",
        "some string"
      ].join(""),
      allow_other_host: true
    )
  end

  def foobar
    some_block do
      another_block do
        redirect_to(
          [
            "https://login.microsoftonline.com/common/adminconsent?",
            "some string"
          ].join(""),
          allow_other_host: true
        )
      end
    end
  end

  private
    def redirect_to(url, allow_other_host: false)
      puts url
    end
end
