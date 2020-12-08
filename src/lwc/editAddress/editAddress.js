import { api, LightningElement } from 'lwc';

export default class EditAddress extends LightningElement {

    @api
    address;

    constructor() {
        super();
        console.log('EditAddress Run Constructor');

        this.address = {
            street: 'Rua Abetel',
            streetNumber: '51',
            additionalInfo: 'Altos',
            zipCode: '66123440',
            city: 'Belém',
            state: 'PA',
        }
    }

    connectedCallback() {
        console.log('EditAddress Connected Callback');
    }

    renderedCallback() {
        console.log('EditAddress Rendered Callback');
    }

    handleSearchedAddress(event) {

        console.log(JSON.stringify(event.detail));
        this.address = event.detail;

    }

}