Address.create!([
  {address1: "cbe", address2: "cbe", city: nil, state: nil, country: nil, pincode: nil},
  {address1: "cbe", address2: "cbe", city: nil, state: nil, country: nil, pincode: nil},
  {address1: "24, Gandhipuram", address2: "", city: "Coimbatore", state: "Tamilnadu", country: "India", pincode: "641603"},
  {address1: "3, first floor", address2: "", city: "Coimbatore", state: "Tamilnadu", country: "India", pincode: "641603"},
  {address1: "No.3, Meenatchi layout", address2: "", city: "Coimbatore", state: "Tamilnadu", country: "India", pincode: "641634"},
  {address1: "985, Ram nagar", address2: "", city: "Coimbatore", state: "Tamilnadu", country: "India", pincode: "641612"},
  {address1: "100, TVH", address2: "", city: "Coimbatore", state: "Tamilnadu", country: "India", pincode: "641601"},
  {address1: "56, GN mills", address2: "", city: "Coimbatore", state: "Tamilnadu", country: "India", pincode: "641532"}
])
Tenant.create!([
  {tenant_login_name: "wheelspin", display_name: "wheelspin", subscription_status: nil, logo: nil, address_id: 1}
])
Unit.create!([
  {unit_short_code: "milliliter", unit_name: "ml"},
  {unit_short_code: "gram", unit_name: "g"},
  {unit_short_code: "piece", unit_name: "piece"}
])
User.create!([
  {tenant_id: 1, first_name: "Guru", last_name: "Thatchnamoorthi", email: "gvguru23@gmail.com", username: "gvguru", password: "guru", mobile_number: "9876543219", password_confirmation: "guru", address_id: 2}
])
Customer.create!([
  {tenant_id: 1, customername: "Srivishnu", email_id: "srivishnuit@gmail.com", contact_number: "9874563215", address_id: 3},
  {tenant_id: 1, customername: "Manikandan", email_id: "mmaniy@gmail.com", contact_number: "9874563215", address_id: 4},
  {tenant_id: 1, customername: "Urmila", email_id: "urmila@gmail.com", contact_number: "9874563215", address_id: 5},
  {tenant_id: 1, customername: "Guru", email_id: "gvguru23@gmail.com", contact_number: "9874563215", address_id: 6},
  {tenant_id: 1, customername: "Vevek Paniyan", email_id: "vevek@gmail.com", contact_number: "9874563215", address_id: 7},
  {tenant_id: 1, customername: "Mahesh Kumar", email_id: "mahesh@gmail.com", contact_number: "9513578458", address_id: 8}
])
SparesCategory.create!([
  {category_name: "FIAT Spares", category_code: nil},
  {category_name: "ALTERNATOR", category_code: nil},
  {category_name: "STARTER & ALTERNATOR LUCAS", category_code: nil},
  {category_name: "TMPC Local Part", category_code: nil},
  {category_name: "TMPC Spare Parts", category_code: nil},
  {category_name: "ELECTRICALS LUCAS", category_code: nil},
  {category_name: "STARTER LUCAS", category_code: nil}
])
Spare.create!([
  {unit_id: 2, spares_category_id: 1, part_number: "7670683", item_name: "PIN", description: nil},
  {unit_id: 3, spares_category_id: 1, part_number: "7079682", item_name: "A/C POLLEN FILTER", description: nil},
  {unit_id: 2, spares_category_id: 2, part_number: "26021319", item_name: "ALTERNATOR ASSY INDICA", description: nil},
  {unit_id: 1, spares_category_id: 2, part_number: "26021320", item_name: "Alternator Assy Indica petrol", description: nil},
  {unit_id: 2, spares_category_id: 3, part_number: "26021338", item_name: "Alternator Assy", description: nil},
  {unit_id: 2, spares_category_id: 4, part_number: "26024012", item_name: "Starter Assy(Indigo)", description: nil},
  {unit_id: 2, spares_category_id: 5, part_number: "26024537", item_name: "STARTER MOTOR M70 GRS", description: nil},
  {unit_id: 2, spares_category_id: 3, part_number: "26211637", item_name: "OIL SEAL", description: nil},
  {unit_id: 2, spares_category_id: 2, part_number: "26211664", item_name: "BEARING ARMATURE WITH SLOT", description: nil},
  {unit_id: 2, spares_category_id: 6, part_number: "26213412", item_name: "ROTOR ASSY SAFARI", description: nil},
  {unit_id: 1, spares_category_id: 7, part_number: "26256312", item_name: "Fixing bracekt indica diesel", description: nil},
  {unit_id: 1, spares_category_id: 7, part_number: "26256332", item_name: "Ce braket indica diesel", description: nil},
  {unit_id: 3, spares_category_id: 3, part_number: "26256386", item_name: "BRUSH GEAR", description: nil},
  {unit_id: 1, spares_category_id: 7, part_number: "26256545", item_name: "Drive assy Indica diesel)", description: nil},
  {unit_id: 1, spares_category_id: 7, part_number: "26256549", item_name: "Field coil indica diesel", description: nil},
  {unit_id: 3, spares_category_id: 3, part_number: "26256550", item_name: "INSUL & EARTH BRUSH", description: nil},
  {unit_id: 3, spares_category_id: 3, part_number: "26256557", item_name: "ARMATURE ASSY", description: nil},
  {unit_id: 3, spares_category_id: 7, part_number: "26256673", item_name: "NEEDLE BRG 14C1E", description: nil},
  {unit_id: 3, spares_category_id: 4, part_number: "26925121", item_name: "STARTER ASSY (SUMO)", description: nil},
  {unit_id: 3, spares_category_id: 4, part_number: "26925264", item_name: "Starter Assy", description: nil},
  {unit_id: 3, spares_category_id: 3, part_number: "26948069", item_name: "RECTIFIER", description: nil},
  {unit_id: 3, spares_category_id: 1, part_number: "46307567", item_name: "COLLAR", description: nil},
  {unit_id: 3, spares_category_id: 1, part_number: "46403659", item_name: "TIMING BELT", description: nil},
  {unit_id: 3, spares_category_id: 1, part_number: "46463801", item_name: "SPARK PLUG", description: nil},
  {unit_id: 3, spares_category_id: 1, part_number: "46519347", item_name: "SHOCK ABSORBER REAR", description: nil}
])
SparesInventory.create!([
  {spare_id: 1, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 2, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 6, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 7, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 8, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 9, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 10, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 11, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 12, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 14, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 15, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 16, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 17, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 18, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 19, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 20, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 21, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 22, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 23, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 24, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 25, available_quantity: "0", alert_minimum_quantity: "0"},
  {spare_id: 3, available_quantity: "9", alert_minimum_quantity: "0"},
  {spare_id: 4, available_quantity: "8", alert_minimum_quantity: "0"},
  {spare_id: 5, available_quantity: "12", alert_minimum_quantity: "0"},
  {spare_id: 13, available_quantity: "9", alert_minimum_quantity: "0"}
])
PurchaseLog.create!([
  {spare_id: 3, user_id: 1, cost_per_unit: 2.0, quantity: 9, total_cost: 96.0, purchased_from: nil, sgst: 2.0, cgst: 1.0},
  {spare_id: 5, user_id: 1, cost_per_unit: 2.0, quantity: 6, total_cost: 4.0, purchased_from: nil, sgst: 8.0, cgst: 2.0},
  {spare_id: 4, user_id: 1, cost_per_unit: 5.0, quantity: 8, total_cost: 6.0, purchased_from: nil, sgst: 5.0, cgst: 1.0},
  {spare_id: 5, user_id: 1, cost_per_unit: 1.0, quantity: 6, total_cost: 1.0, purchased_from: nil, sgst: 3.0, cgst: 5.0},
  {spare_id: 13, user_id: 1, cost_per_unit: 6.0, quantity: 9, total_cost: 9.0, purchased_from: nil, sgst: 7.0, cgst: 4.0}
])