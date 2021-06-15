﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.Shop
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET.Business;
    using ICSSoft.STORMNET;
    
    
    // *** Start programmer edit section *** (Using statements)

    // *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Заказ.
    /// </summary>
    // *** Start programmer edit section *** (Order CustomAttributes)

    // *** End programmer edit section *** (Order CustomAttributes)
    [BusinessServer("IIS.Shop.OrderBS, Shop.BusinessServers", ICSSoft.STORMNET.Business.DataServiceObjectEvents.OnAllEvents)]
    [AutoAltered()]
    [Caption("Заказ")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("OrderE", new string[] {
            "Number as \'Номер\'",
            "Status as \'Статус\'",
            "CreateDate as \'Дата оформления\'",
            "Manager as \'Менеджер\'",
            "Manager.LastName as \'\'",
            "Manager.FirstName as \'\'",
            "Manager.MiddleName as \'\'",
            "TotalSum as \'Стоимость заказа\'",
            "PaymentDate as \'Дата оплаты\'",
            "ShipmentDate as \'Дата отгрузки\'"}, Hidden=new string[] {
            "Manager.LastName",
            "Manager.FirstName",
            "Manager.MiddleName"})]
    [AssociatedDetailViewAttribute("OrderE", "OrderItem", "OrderItemE", true, "", "Содержимое заказа", true, new string[] {
            ""})]
    [MasterViewDefineAttribute("OrderE", "Manager", ICSSoft.STORMNET.LookupTypeEnum.Standard, "", "LastName")]
    [View("OrderL", new string[] {
            "Number as \'Номер\'",
            "Status as \'Статус\'",
            "CreateDate as \'Дата оформления\'",
            "Manager.LastName as \'Менеджер\'",
            "TotalSum as \'Стоимость заказа\'",
            "PaymentDate as \'Дата оплаты\'",
            "ShipmentDate as \'Дата отгрузки\'"})]
    [AssociatedDetailViewAttribute("OrderL", "OrderItem", "OrderItemInOrderL", true, "", "", false, new string[] {
            ""})]
    public class Order : IIS.Shop.Document
    {
        
        private IIS.Shop.OrderStatus fStatus = IIS.Shop.OrderStatus.New;
        
        private System.DateTime? fShipmentDate;
        
        private System.DateTime? fPaymentDate;
        
        private IIS.Shop.Employee fManager;
        
        private IIS.Shop.DetailArrayOfOrderItem fOrderItem;
        
        // *** Start programmer edit section *** (Order CustomMembers)

        // *** End programmer edit section *** (Order CustomMembers)

        
        /// <summary>
        /// Status.
        /// </summary>
        // *** Start programmer edit section *** (Order.Status CustomAttributes)

        // *** End programmer edit section *** (Order.Status CustomAttributes)
        public virtual IIS.Shop.OrderStatus Status
        {
            get
            {
                // *** Start programmer edit section *** (Order.Status Get start)

                // *** End programmer edit section *** (Order.Status Get start)
                IIS.Shop.OrderStatus result = this.fStatus;
                // *** Start programmer edit section *** (Order.Status Get end)

                // *** End programmer edit section *** (Order.Status Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Order.Status Set start)

                // *** End programmer edit section *** (Order.Status Set start)
                this.fStatus = value;
                // *** Start programmer edit section *** (Order.Status Set end)

                // *** End programmer edit section *** (Order.Status Set end)
            }
        }
        
        /// <summary>
        /// ShipmentDate.
        /// </summary>
        // *** Start programmer edit section *** (Order.ShipmentDate CustomAttributes)

        // *** End programmer edit section *** (Order.ShipmentDate CustomAttributes)
        public virtual System.DateTime? ShipmentDate
        {
            get
            {
                // *** Start programmer edit section *** (Order.ShipmentDate Get start)

                // *** End programmer edit section *** (Order.ShipmentDate Get start)
                System.DateTime? result = this.fShipmentDate;
                // *** Start programmer edit section *** (Order.ShipmentDate Get end)

                // *** End programmer edit section *** (Order.ShipmentDate Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Order.ShipmentDate Set start)

                // *** End programmer edit section *** (Order.ShipmentDate Set start)
                this.fShipmentDate = value;
                // *** Start programmer edit section *** (Order.ShipmentDate Set end)

                // *** End programmer edit section *** (Order.ShipmentDate Set end)
            }
        }
        
        /// <summary>
        /// PaymentDate.
        /// </summary>
        // *** Start programmer edit section *** (Order.PaymentDate CustomAttributes)

        // *** End programmer edit section *** (Order.PaymentDate CustomAttributes)
        public virtual System.DateTime? PaymentDate
        {
            get
            {
                // *** Start programmer edit section *** (Order.PaymentDate Get start)

                // *** End programmer edit section *** (Order.PaymentDate Get start)
                System.DateTime? result = this.fPaymentDate;
                // *** Start programmer edit section *** (Order.PaymentDate Get end)

                // *** End programmer edit section *** (Order.PaymentDate Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Order.PaymentDate Set start)

                // *** End programmer edit section *** (Order.PaymentDate Set start)
                this.fPaymentDate = value;
                // *** Start programmer edit section *** (Order.PaymentDate Set end)

                // *** End programmer edit section *** (Order.PaymentDate Set end)
            }
        }
        
        /// <summary>
        /// TotalSum.
        /// </summary>
        // *** Start programmer edit section *** (Order.TotalSum CustomAttributes)

        // *** End programmer edit section *** (Order.TotalSum CustomAttributes)
        [ICSSoft.STORMNET.NotStored()]
        [DataServiceExpression(typeof(SQLDataService), "SELECT SUM(PriceWTaxes * Amount) FROM OrderItem WHERE OrderItem.Заказ = STORMMain" +
            "ObjectKey")]
        public virtual double TotalSum
        {
            get
            {
                // *** Start programmer edit section *** (Order.TotalSum Get)
                if (!CheckLoadedProperty(nameof(OrderItem)))
                {
                    throw new InvalidOperationException($"The '{nameof(OrderItem)}' property not loaded.");
                }

                double sum = 0;
                foreach (OrderItem item in OrderItem)
                {
                    sum += item.PriceWTaxes * item.Amount;
                }

                return sum;
                // *** End programmer edit section *** (Order.TotalSum Get)
            }
            set
            {
                // *** Start programmer edit section *** (Order.TotalSum Set)

                // *** End programmer edit section *** (Order.TotalSum Set)
            }
        }
        
        /// <summary>
        /// Заказ.
        /// </summary>
        // *** Start programmer edit section *** (Order.Manager CustomAttributes)

        // *** End programmer edit section *** (Order.Manager CustomAttributes)
        [PropertyStorage(new string[] {
                "Manager"})]
        public virtual IIS.Shop.Employee Manager
        {
            get
            {
                // *** Start programmer edit section *** (Order.Manager Get start)

                // *** End programmer edit section *** (Order.Manager Get start)
                IIS.Shop.Employee result = this.fManager;
                // *** Start programmer edit section *** (Order.Manager Get end)

                // *** End programmer edit section *** (Order.Manager Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Order.Manager Set start)

                // *** End programmer edit section *** (Order.Manager Set start)
                this.fManager = value;
                // *** Start programmer edit section *** (Order.Manager Set end)

                // *** End programmer edit section *** (Order.Manager Set end)
            }
        }
        
        /// <summary>
        /// Заказ.
        /// </summary>
        // *** Start programmer edit section *** (Order.OrderItem CustomAttributes)

        // *** End programmer edit section *** (Order.OrderItem CustomAttributes)
        public virtual IIS.Shop.DetailArrayOfOrderItem OrderItem
        {
            get
            {
                // *** Start programmer edit section *** (Order.OrderItem Get start)

                // *** End programmer edit section *** (Order.OrderItem Get start)
                if ((this.fOrderItem == null))
                {
                    this.fOrderItem = new IIS.Shop.DetailArrayOfOrderItem(this);
                }
                IIS.Shop.DetailArrayOfOrderItem result = this.fOrderItem;
                // *** Start programmer edit section *** (Order.OrderItem Get end)

                // *** End programmer edit section *** (Order.OrderItem Get end)
                return result;
            }
            set
            {
                // *** Start programmer edit section *** (Order.OrderItem Set start)

                // *** End programmer edit section *** (Order.OrderItem Set start)
                this.fOrderItem = value;
                // *** Start programmer edit section *** (Order.OrderItem Set end)

                // *** End programmer edit section *** (Order.OrderItem Set end)
            }
        }
        
        // *** Start programmer edit section *** (Order.Cancel CustomAttributes)

        // *** End programmer edit section *** (Order.Cancel CustomAttributes)
        [ICSSoft.STORMNET.AccessType(ICSSoft.STORMNET.AccessType.none)]
        public virtual void Cancel()
        {
            // *** Start programmer edit section *** (Order.Cancel method implementation)
            return;
            // *** End programmer edit section *** (Order.Cancel method implementation)
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "OrderE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View OrderE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("OrderE", typeof(IIS.Shop.Order));
                }
            }
            
            /// <summary>
            /// "OrderL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View OrderL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("OrderL", typeof(IIS.Shop.Order));
                }
            }
        }
    }
}
