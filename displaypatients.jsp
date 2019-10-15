<%-- 
    Document   : displaypatients
    Created on : Oct 3, 2018, 10:36:45 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #viewPresModal div.modal-body{
                height:200px;
            }
            #viewPresModal div.modal-content{
                width:400px;
            }
            #viewPresModal.modal-dialog, #viewPresModal.modal-content{
                width:200px;
            }
            #presAddForm.modal-body{
                height:200px;
            }
        </style>
    </head>
    <body>
        <div id="myPatients" class="tab-pane fade in active">
            <h3>Patients Record</h3>
            <table class="table table-hover table-bordered" id="thlPatients">
                    <thead>
                        <tr>
                            <th>FULL NAME</th>
                            <th> DATE OF BIRTH</th>
                            <th>GENDER </th>
                            <th>PATIENT TYPE</th>
                            <th>PRESCRIPTION</th>
                        </tr>
                    </thead>
                    <tbody id="patientBody">
                    </tbody>
            </table>
                    <div class="patientMsg">
                        
                    </div>
            <div id="viewPresModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <form name="presViewForm" method="POST">
                        <div class="modal-content">
                            <div class="modal-header" >
                                <h4 class="modal-title">Prescription View
                                    
                                </h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                            </div>
                        </div>
                            <div class="modal-footer">
                                
                            </div>
                        </div>
                    </form>
                </div>
                
            </div>
            <div id="submitPresModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <form name="submitPresForm" method="POST">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">ADD PRESCRIPTION</h4>
                                
                            </div>
                            <div class="modal-body">
                                <select name="patienttype" size="2">
                                    <option value="indoor">Indoor</option>
                                    <option value="outdoor">Outdoor</option>
                                </select>
                            </div>
                            <div class="col-lg-6" >
                                <input type="text" name="disease" value="" placeholder="disease" required />
                            </div>
                            <div>
                                <select name="mid1">
                                    <option></option>
                                    <option></option>
                                </select>
                            </div>
                            <div>
                                <input type="text" name="dosage1" value="" placeholder="dosage1" required />
                            </div>
                            <div>
                                <select name="mid2">
                                    <option></option>
                                    <option></option>
                                </select>
                            </div>
                            <div>
                                <input type="text" name="dosage2" value="" placeholder="dosage2" required />
                            </div>
                            <div>
                                <select name="mid3">
                                    <option></option>
                                    <option></option>
                                </select>
                            </div>
                            <div>
                                <input type="text" name="dosage3" value="" placeholder="dosage3" required />
                            </div>
                            
                        </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Add prescription" name="button" />
                </div>
            </div>
                  </form>
                </div>
        </div>
        
    </body>
</html>
