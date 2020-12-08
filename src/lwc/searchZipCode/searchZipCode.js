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

        searchAddress({ zipCode: event.target.value.replace('-', '') }).then(response => {

            let address = response;
            this.publishAddressChanged(address);

        });
        console.log('Final do blur');


    }

    publishAddressChanged() {

        let searchedAddressEvent = new CustomEvent('searchedaddress', {
            detail: address
        });

        this.dispatchEvent(searchedAddressEvent);

    }
}