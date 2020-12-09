import { api, LightningElement } from 'lwc';

export default class EditAddress extends LightningElement {

    @api
    address;

    set localAddress(address) {
        console.log('address changed');
        this._address = Object.assign(address);
        this.dispatchChangedAddress();
    }

    get localAddress() {
        return this._address;
    }

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
        this.localAddress = this.address;
    }

    renderedCallback() {
        console.log('EditAddress Rendered Callback');
    }

    handleSearchedAddress(event) {

        console.log(JSON.stringify(event.detail));
        this.address = event.detail;
        this.localAddress = event.detail;

    }

    dispatchChangedAddress() {
        let changedAddressEvent = new CustomEvent('addresschanged', {
            detail: this.localAddress
        });
        this.dispatchEvent(changedAddressEvent);
    }

    handleChange(event) {

        let _address = JSON.parse(JSON.stringify(this.localAddress));
        _address[event.target.name] = event.target.value;
        this.localAddress = _address;

    }

}