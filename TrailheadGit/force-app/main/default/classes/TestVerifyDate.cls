@isTest
private class TestVerifyDate {

    //testing that if date2 is within 30 days of date1, should return date 2
    @isTest static void CheckDatesTestFalse(){

        Date data1 = date.newInstance(2022, 01, 01);
        Date data2 = date.newInstance(2022, 01, 31);
        Date result = VerifyDate.CheckDates(data1,data2);
        System.assertEquals(data2,result);
    }

    @isTest static void CheckDatesTestTrue(){

        Date data1 = date.newInstance(2022, 01, 01);
        Date data2 = date.newInstance(2022, 01, 30);
        Date result = VerifyDate.CheckDates(data1,data2);
        System.assertEquals(data2,result);
    }

}