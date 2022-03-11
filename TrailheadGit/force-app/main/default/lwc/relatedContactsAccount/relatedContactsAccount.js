import { LightningElement, api, wire } from 'lwc';
// import FIRST_NAME from '@salesforce/schema/Contact.FirstName';
// import LAST_NAME from '@salesforce/schema/Contact.LastName';
// import EMAIL from '@salesforce/schema/Contact.Email';
// import PHONE from '@salesforce/schema/Contact.Phone';
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
    //@wire(GetAccountContactsById, {recordId:"$recordId"})
    //@wire(getRelatedContacts, { recordId :'$recordId'})
    //contact;

    @wire(GetAccountContactsById, { accountId: '$recordId' }) 
    contact;

}