*** Variables ***
${Email}    id:Email
${Password}    id:Password

${Search_Box}    id:small-searchterms

${Login_Button}    //a[normalize-space()='Log in']
${Login}    //button[normalize-space()='Log in']
${Register_Button}    //button[normalize-space()='Register']
${Search_Button}    //button[normalize-space()='Search']
${Add_to_cart_Button}    //button[@id='add-to-cart-button-37']
${Bar_Close}    //span[@title='Close']
${Cart_Button}    //span[@class='cart-label']
${Checkout_Button}    id:checkout
${CheckBox}    termsofservice
${Guest}    //button[normalize-space()='Checkout as Guest']
${Shipping}    id:ShipToSameAddress

${Products}    //h2[@class='product-title']
${Books}    //ul[@class='top-menu notmobile']//a[normalize-space()='Books']


${First_name}    id:BillingNewAddress_FirstName
${Last_name}    id:BillingNewAddress_LastName
${Billing_Email}    id:BillingNewAddress_Email
${Country}    id:BillingNewAddress_CountryId
${City_name}    id:BillingNewAddress_City
${Billing_Address}    id:BillingNewAddress_Address1
${Pincode}    id:BillingNewAddress_ZipPostalCode
${Phone}    id:BillingNewAddress_PhoneNumber
${Continue}    //div[@id='billing-buttons-container']/button[2]
${Continue2}    //div[@id='shipping-method-buttons-container']/button
${Continue3}    //div[@id='payment-method-buttons-container']/button
${Continue4}    //div[@id='payment-info-buttons-container']/button
${Confirm}    //button[normalize-space()='Confirm']
