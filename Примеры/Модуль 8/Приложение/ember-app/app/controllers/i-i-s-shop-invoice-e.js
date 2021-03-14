import EditFormController from 'ember-flexberry/controllers/edit-form';
import Builder from 'ember-flexberry-data/query/builder';
import generateUniqueId from 'ember-flexberry-data/utils/generate-unique-id';

export default EditFormController.extend({
  parentRoute: 'i-i-s-shop-invoice-l',

  orderItemsLoading: false,

  actions: {
    orderChanged({ modelToLookup: invoice, newRelationValue: order }) {
      invoice.set('order', order);
      invoice.get('invoiceItem').toArray().forEach((item) => {
        item.deleteRecord();
      });

      if (order) {
        this.set('orderItemsLoading', true);

        const store = this.get('store');
        const modelName = 'i-i-s-shop-order-item';

        const query = new Builder(store, modelName)
          .selectByProjection('OrderItemE')
          .where('order', 'eq', order.get('id'))
          .build();

        store.query(modelName, query).then((orderItems) => {
          const invoiceItems = orderItems.map((orderItem) => {
            const id = generateUniqueId();
            const price = orderItem.get('priceWTaxes');
            const totalSum = orderItem.get('totalSum');
            const product = orderItem.get('product');
            const amount = Number(orderItem.get('amount'));
            const weight = Number(product.get('weight')) * amount;

            return store.createRecord('i-i-s-shop-invoice-item', { id, amount, weight, price, totalSum, product, invoice });
          });

          invoice.get('invoiceItem').pushObjects(invoiceItems);
        }).finally(() => {
          this.set('orderItemsLoading', false);
        });
      } else {
        invoice.set('totalWeight', 0);
      }
    }
  },

  getCellComponent(attr, bindingPath, model) {
    let cellComponent = this._super(...arguments);
    if (attr.kind === 'belongsTo') {
      switch (`${model.modelName}+${bindingPath}`) {
        case 'i-i-s-shop-invoice-item+product':
          cellComponent.componentProperties = {
            choose: 'showLookupDialog',
            remove: 'removeLookupValue',
            displayAttributeName: 'nameWCode',
            required: false,
            relationName: 'product',
            projection: 'ProductL',
            autocomplete: true,
          };
          break;

      }
    }

    return cellComponent;
  },
});
