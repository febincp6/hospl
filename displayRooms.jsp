<%-- 
    Document   : displayRooms
    Created on : Oct 2, 2018, 8:03:26 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DISPLAY ROOMS</title>
        <style>
            .form-control{
                margin:5px;
            }
            .modal-body{
                height:150px;
            }
        </style>
    </head>
    <body bgcolor="limegreen">
        <div id="rooms" class="tab-pane fade in">
            <h3>
                Rooms Record
            </h3>
            <table class="table table-hover table bordered" id="displayRooms">
                <thead>
                    <tr>
                        <th>
                            Room no
                        </th>
                        <th>
                            Total no of beds
                        </th>
                        <th>
                            Governed By
                        </th>
                        <th>
                            Phone Number
                           </th>
                           <th>
                               Action
                           </th>
                    </tr>
                </thead>
                <tbody id="roomBody">
                    
                </tbody>
            </table>
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addRoomModal">Add Room</button>
            <div class="roommsg" ></div>
            <div id="addRoomModal" class="modal fade">
                <div class="modal-dialog">
                    <form method="post" id="roomForm" action="../process?action=addRoom">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Enter Room Detail</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <div class="col-lg-12">
                                        <input type="number" class="form-control" name="totalbeds" placeholder="Enter no of beds" required/>
                                    </div>
                                    <div class="col-lg-12">
                                        <label>Governed By</label>
                                        <select class="form-control" name="nurseId">
                                            
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer"><button type="submit" class="btn btn-success">Save Record</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        
        </div>
        <div id="editRoomModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <form method="post" id="updateRoomForm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Enter room detail</h4>
                            
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <input type="number" class="form-control" name="totalbeds" placeholder="Enter no of beds" required/>
                                    
                                </div>
                                <div class="col-lg-12">
                                    <label> Governed By</label>
                                    <select class="form-control" name="nurseid">
                                        
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">save record</button> 
                    </div>
            
            
                </form>
            </div>
        </div>


    </body>
</html>
