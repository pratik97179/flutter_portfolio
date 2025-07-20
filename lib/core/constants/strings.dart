class AutoString {
  const AutoString();
}

@AutoString()
enum AppName {
  appName,
}

@AutoString()
enum HomeNavString {
  home,
  shop,
  categories,
  search,
  cart,
  wishlist,
  account,
  menu,
}

@AutoString()
enum SearchFilterString {
  searchPlaceholder,
  filter,
  sortBy,
  applyFilters,
  clearFilters,
  priceRange,
  brand,
  rating,
  inStockOnly,
}

@AutoString()
enum ProductString {
  addToCart,
  addToWishlist,
  removeFromWishlist,
  outOfStock,
  inStock,
  viewDetails,
  productDetails,
  specifications,
  description,
  reviews,
  relatedProducts,
  moreInfo,
  selectQuantity,
  size,
  color,
}

@AutoString()
enum CartString {
  cartTitle,
  emptyCart,
  yourCartIsEmpty,
  itemsInCart,
  totalPrice,
  checkout,
  continueShopping,
  removeItem,
  updateQuantity,
  itemRemoved,
}

@AutoString()
enum CheckoutString {
  deliveryAddress,
  addNewAddress,
  paymentMethod,
  enterCardDetails,
  placeOrder,
  orderSummary,
  subtotal,
  shippingFee,
  totalAmount,
  billingAddress,
  deliveryInstructions,
  editAddress,
}

@AutoString()
enum OrderString {
  orders,
  trackOrder,
  orderPlaced,
  orderConfirmed,
  orderShipped,
  orderDelivered,
  orderCancelled,
  orderFailed,
  viewOrder,
  reorder,
}

@AutoString()
enum AuthString {
  login,
  logout,
  signup,
  myAccount,
  editProfile,
  changePassword,
  forgotPassword,
  email,
  password,
  name,
  address,
  phoneNumber,
  saveChanges,
}

@AutoString()
enum UiSystemString {
  ok,
  cancel,
  yes,
  no,
  confirm,
  error,
  success,
  loading,
  noResultsFound,
  tryAgain,
  networkError,
  somethingWentWrong,
}

@AutoString()
enum FurnitureCategoryString {
  sofa,
  bed,
  diningTable,
  officeChair,
  coffeeTable,
  wardrobe,
  tvUnit,
  bookshelf,
  studyTable,
  recliner,
  storageCabinet,
  outdoorFurniture,
}

@AutoString()
enum FurnitureAttributeString {
  material,
  dimensions,
  woodType,
  fabricType,
  cushionIncluded,
  assemblyRequired,
  assemblyInstructions,
  weight,
  warranty,
  careInstructions,
  maxLoad,
}

@AutoString()
enum LifestyleString {
  roomType,
  livingRoom,
  bedroom,
  diningRoom,
  officeSpace,
  outdoorArea,
  matchWith,
  completeTheLook,
  styleIdeas,
}

@AutoString()
enum AddonServiceString {
  freeInstallation,
  freeDelivery,
  cashOnDelivery,
  easyReturns,
  emiAvailable,
  customizable,
  bulkOrderInquiry,
  interiorDesignAssistance,
}

@AutoString()
enum LegalDocString {
  termsAndConditions,
  privacyPolicy,
  returnPolicy,
  warrantyPolicy,
}
