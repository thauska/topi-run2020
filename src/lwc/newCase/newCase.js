import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

/**
 * @author thauska
 */

export default class NewCase extends LightningElement {

    handleSuccess(event) {

        const toast = new ShowToastEvent({
            variant: 'success',
            title: 'Case Success Created',
            message: 'Caso criado com sucesso!!! ;)'
        });

        this.dispatchEvent(toast);

    }

}