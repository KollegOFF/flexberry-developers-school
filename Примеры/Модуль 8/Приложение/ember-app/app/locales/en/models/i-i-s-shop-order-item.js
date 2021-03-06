export default {
  projections: {
    OrderItemE: {
      product: {
        __caption__: 'product',
        name: {
          __caption__: 'name'
        },
        productCode: {
          __caption__: 'productCode'
        },
        price: {
          __caption__: 'price'
        },
        weight: {
          __caption__: 'weight'
        },
        measure: {
          __caption__: 'measure'
        }
      },
      amount: {
        __caption__: 'amount'
      },
      priceWTaxes: {
        __caption__: 'priceWTaxes'
      },
      totalSum: {
        __caption__: 'totalSum'
      }
    },
    OrderItemInOrderL: {
      amount: {
        __caption__: 'amount'
      },
      priceWTaxes: {
        __caption__: 'priceWTaxes'
      }
    }
  },
  validations: {
    amount: {
      __caption__: 'amount'
    },
    priceWTaxes: {
      __caption__: 'priceWTaxes'
    },
    totalSum: {
      __caption__: 'totalSum'
    },
    product: {
      __caption__: 'product'
    },
    order: {
      __caption__: 'order'
    }
  }
};
