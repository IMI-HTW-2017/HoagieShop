require "application_system_test_case"

class MainIngredientsTest < ApplicationSystemTestCase
  setup do
    @main_ingredient = main_ingredients(:one)
  end

  test "visiting the index" do
    visit main_ingredients_url
    assert_selector "h1", text: "Main Ingredients"
  end

  test "creating a Main ingredient" do
    visit main_ingredients_url
    click_on "New Main Ingredient"

    fill_in "Count", with: @main_ingredient.count
    fill_in "Name", with: @main_ingredient.name
    click_on "Create Main ingredient"

    assert_text "Main ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Main ingredient" do
    visit main_ingredients_url
    click_on "Edit", match: :first

    fill_in "Count", with: @main_ingredient.count
    fill_in "Name", with: @main_ingredient.name
    click_on "Update Main ingredient"

    assert_text "Main ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Main ingredient" do
    visit main_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main ingredient was successfully destroyed"
  end
end
