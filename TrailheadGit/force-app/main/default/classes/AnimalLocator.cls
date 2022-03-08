public with sharing class AnimalLocator {
    public Static String getAnimalNameById (Integer numbers) {
        
        String nomeAnimal;

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + numbers);
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200) {

            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            Map<String, Object> animal = (Map<String, Object>) results.get('animal');
            
            nomeAnimal = string.valueOf(animal.get('name'));

        }

        return nomeAnimal;
        }
        
    }