package com.prodevans.marcus.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.marcus.pojo.SendMailDetails;

public interface SendMailDAO {
    //public Boolean sentMailFeedback(SendMailDetails feedback) throws XmlRpcException;

    public Boolean sentMailContactUs(SendMailDetails feedback) throws XmlRpcException;

    public Boolean sentMailNewConnection(SendMailDetails feedback) throws XmlRpcException;

}
