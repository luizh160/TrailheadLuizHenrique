import { LightningElement, api, wire } from 'lwc';
import GetAccountContactsById from '@salesforce/apex/AccountGetContactsLWC.GetAccountContactsById';

const COLUMNS = [
    { label: 'First Name', fieldName: 'FirstName',  type: 'text' },
    { label: 'Last Name', fieldName: 'LastName', type: 'text' },
    { label: 'Email', fieldName: 'Email', type: 'text' },
    { label: 'Phone', fieldName: 'Phone', type: 'text' },
];

export default class WireApexProperty extends LightningElement {
    
    @api recordId;
    columns = COLUMNS;

    @wire(GetAccountContactsById, { accountId: '$recordId' }) 
    contact;

}