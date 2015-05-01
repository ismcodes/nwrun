describe "Data input" do
  it "creates a lot of new stuff from form in scaffold" do
    Runner.create(name:"I AM USAIN BOLT")
    visit '/meets/new'

    expect(page).to have_css("input[name='Meet name']")
    find("input[name='Meet name']").set "2015 Fall Olympics"

    expect(page).to have_css("input[name='testing@example.com']")
    find("input[name='testing@example.com']").set "1" #nice, 1 second 100m!

    expect(page).to have_css("input[name='testing@example.com_event']")
    find("input[name='testing@example.com_event']").set "100mdash"

    find("input[type='submit']").click
  end
end
