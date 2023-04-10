<apex:component access="global" controller="AdHocPaymentEmailCompController" >
    <apex:attribute id="billing" assignTo="{!userbillingId}" name="billingId" type="Id" description="Billing Id"/> 
    
    Dear&nbsp;<apex:outputText rendered="{!BookingDetails.Corporate_Contact__c != null}">{!BookingDetails.Corporate_Contact__r.Name}</apex:outputText> <apex:outputText rendered="{!BookingDetails.Corporate_Contact__c = null}">{!BookingDetails.Member__r.Name}</apex:outputText>, <br/><br/>
    	
    I am writing to remind you that the payment for {!BookingDetails.Invoice_Number__c} is now due.<br/><br/>
    To make the payment process easier for you, we have included a link to our secure payment portal:&nbsp; <apex:outputText rendered="{!BookingDetails.Id != null}"><a href="{!locationUrl}" >Payment Link</a></apex:outputText>. Please note that this link will only be active until {!dueDate}, after which it will no longer be accessible.<br/><br/>
    We kindly ask that you make the payment as soon as possible to avoid any late fees or penalties. If you have already made the payment, please disregard this message.<br/><br/>
     
    Thank you for your prompt attention to this matter. If you have any questions or concerns, please do not hesitate to contact us.
    
    
    <br/><br/>
    thanks & Best regards,
    <br/><br/>
    ISCA
    
</apex:component>
