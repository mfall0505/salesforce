trigger createoppcont on Account (after insert) {

    List<opportunity>opplist= new List<opportunity>();
    List<Contact>conlist= new List<Contact>();
    
    for(Account acc:trigger.new){
    opportunity opp= new opportunity();
    opp.Name=acc.Name;
    opp.StageName='Qualification';
    opp.closedate=date.today()+14;
    opp.Accountid=acc.id;
    
    opplist.add(opp);
    contact con=new contact();
    con.LastName='LastName';
    con.Accountid=acc.id;
    conlist.add(con);
    
    
    
    }
    insert opplist ;
    insert conlist;
    

}