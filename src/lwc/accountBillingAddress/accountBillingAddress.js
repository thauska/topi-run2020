import { LightningElement } from 'lwc';

export default class AccountBillingAddress extends LightningElement {

    billingAddress;

    constructor() {
        super();
        console.log('AccountBillingAddress Run Constructor');

        this.billingAddress = {
            street: 'Rua Thayana',
            streetNumber: '51',
            additionalInfo: 'Altos',
            zipCode: '66123440',
            city: 'Belém',
            state: 'PA',
        }

    }

    connectedCallback() {
        console.log('AccountBillingAddress Connected Callback');
    }

    renderedCallback() {
        console.log('AccountBillingAddress Rendered Callback');
    }
}