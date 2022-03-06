require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # Load test fixture specified in test/fixtures//products.yml to database table products.
  # the default for tests is to load all fixtures before running the test.
  fixtures :products

  test "Product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "Product price must be positive" do
    product = Product.new(title: "My Book Title",
                          description: "yyy", image_url: "zzz.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 product.errors[:price]
    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 product.errors[:price]
    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(title: "My Book Title",
                description: "yyy", price: 1, image_url: image_url)
  end

  test "Image URL" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |url|
      assert new_product(url).valid?, "ERROR: #{url} must be valid"
    end
    bad.each do |url|
      assert new_product(url).invalid?, "ERROR: #{url} must be invalid"
    end
  end

  # Fixture = an environment in which you can run a test

  test "Product is not valid without a unique title" do
    # products(:ruby) returns a Product model containing the data defined in the fixture.
    # Create another product with the same title as products(:ruby), that already exists in the database.
    product = Product.new(title: products(:ruby).title,
                          description: "Other description", price: 999, image_url: "fred.gif")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title],
                 "ERROR: Error message is wrong."
  end

  test "Product is not valid without a unique title - i18n" do
    product = Product.new(title: products(:ruby).title,
                          description: "yyy", price: 1, image_url: "fred.gif")
    assert product.invalid?, "ERROR: Product should not be valid."
    assert_equal [I18n.translate('errors.messages.taken')],
                 product.errors[:title]
  end

end