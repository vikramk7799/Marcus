package com.prodevans.marcus.dao.impl;

import java.util.Vector;
import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;
import com.prodevans.marcus.dao.SendMailDAO;
import com.prodevans.marcus.pojo.SendMailDetails;

public class SendMailDAOImpl implements SendMailDAO {

    @Autowired
    private String unifyHandler;
    @Autowired
    private XmlRpcClient rpcClient;

    public void setUnifyHandler(String unifyHandler) {
        this.unifyHandler = unifyHandler;
    }

    public void setRpcClient(XmlRpcClient rpcClient) {
        this.rpcClient = rpcClient;
    }

    @Override
    public Boolean sentMailContactUs(SendMailDetails feedback) throws XmlRpcException {
        Vector params = new Vector();
        String v = "Name: " + feedback.getName() + "\nEmail: " + feedback.getEmail_id() + "\nSubject: " + feedback.getSubject() + "\nMessage: " + feedback.getMessage();
        params.add(v);
        params.add("Contact Us..");
        params.add("suguna@oneeight.co.in");
        params.add(1);
        Boolean mailResult = (Boolean) rpcClient.execute(unifyHandler + ".sendMail", params);
        return mailResult;
    }

    @Override
    public Boolean sentMailNewConnection(SendMailDetails feedback) throws XmlRpcException {
        Vector params = new Vector();
        String vv = " Name: " + feedback.getName() + "\n Email: " + feedback.getEmail_id() + "\n Mobile: " + feedback.getMobile() + "\n City: " + feedback.getCity() + "\n Pincode: " + feedback.getPincode();
        params.add(vv);
        params.add("New Connection..");
        params.add("suguna@oneeight.co.in");
        params.add(1);
        Boolean mailResult = (Boolean) rpcClient.execute(unifyHandler + ".sendMail", params);
        System.out.println("mail send successfully");

        return mailResult;
    }

}
