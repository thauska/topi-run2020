import { api, LightningElement } from 'lwc';
import searchAddress from '@salesforce/apex/SearchAddressCtrl.searchAddress';

export default class SearchZipCode extends LightningElement {

    @api
    zipCode;

    constructor() {
        super();
        console.log('SearchZipCode Run Constructor');
    }

    connectedCallback() {
        console.log('SearchZipCode Connected Callback');
    }

    renderedCallback() {
        console.log('SearchZipCode Rendered Callback');
    }

    handleBlur(event) {

        if (!event.target.value || event.target.value == this.zipCode) return;

        let _zipCode = Object.assign(event.target.value.replace('-', ''));

        searchAddress({ zipCode: _zipCode }).then(response => {

            let address = response;
            this.publishAddressChanged(address);

        }).catch(response => {

            let component = this.template.querySelector("[data-name='zipcode']");
            component.setCustomValidity(response.body.message);
            component.reportValidity();

        });

        console.log('Final do blur');


    }

    publishAddressChanged(address) {

        let searchedAddressEvent = new CustomEvent('searchedaddress', {
            detail: address
        });

        this.dispatchEvent(searchedAddressEvent);

    }
}