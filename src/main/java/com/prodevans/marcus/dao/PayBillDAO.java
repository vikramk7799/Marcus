package com.prodevans.marcus.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.marcus.pojo.PayBillDetails;


public interface PayBillDAO 
{
	public PayBillDetails getAccountDetails(PayBillDetails bill) throws XmlRpcException;
}
