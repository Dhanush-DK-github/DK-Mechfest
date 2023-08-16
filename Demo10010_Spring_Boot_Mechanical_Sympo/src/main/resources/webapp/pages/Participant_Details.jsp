<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="participant-details mt-5" id="participant-details">
    <h3 class="form-SubTitle pb-3" id="form-SubTitle"><span><b>Participant Details</b></span></h3>

    <div class="fields" id="participants">
        <div class="participant row mt-4 pb-4" id="participant_1">
            
            <h5 class="form-SubTitles"><b>Participant 1</b></h5>
            
            <div class="row">
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label required" for="participant1_name">Name</label>
                    <form:input type="text" class="form-control input_text participant-name" id="participant1_name" name = "name" placeholder="Full Name with Initial" pattern="^(?!\.)(?!.*\.$)(?!.*\.\.)([a-zA-Z.]+([\s][a-zA-Z.]+)*){2,}" path="students[0].name" required="required"/>
                    <div class="valid-feedback">Valid Name</div>
                    <div class="invalid-feedback">Invalid Name</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label required" for="participant1_rollNo">RollNo</label>
                    <form:input type="text" class="form-control input_text" id="participant1_rollNo" name = "rollNo" placeholder="Enter RollNo. NOT Registration No." pattern="[A-Za-z0-9]+" path="students[0].rollNo" required="required"/>
                    <div class="valid-feedback">Valid RollNo</div>
                    <div class="invalid-feedback">Invalid RollNo</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label required" for="participant1_year">Year</label>
                    <form:select id="participant1_year" class="form-select select_text" name="year" path="students[0].year" required="required">
                        <form:option value="">Select Year</form:option>
                        <form:option value="II">II</form:option>
                        <form:option value="III">III</form:option>
                        <form:option value="IV">IV</form:option>
                    </form:select>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label required" for="participant1_mobNo">Mobile No</label>
                    <form:input type="tel" class="form-control input_text" id="participant1_mobNo" name = "mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" path="students[0].mobileNo" required="required"/>
                    <div class="valid-feedback">Valid Mobile No.</div>
                    <div class="invalid-feedback">Invalid Mobile No.</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label required" for="participant1_emailId">Email Id</label>
                    <form:input type="email" class="form-control input_text" id="participant1_emailId" name = "emailId" placeholder="Use Gmail Address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" path="students[0].emailId" required="required"/>
                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                </div>
            </div>
            
        </div>
        
        <div class="participant row mt-4 pb-4" id="participant_2">
            
            <h5 class="form-SubTitles"><b>Participant 2</b></h5>

            <div class="row">
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant2_name">Name</label>
                    <form:input type="text" class="form-control input_text participant-name" id="participant2_name" name = "name" placeholder="Full Name with Initial" pattern="^(?!\.)(?!.*\.$)(?!.*\.\.)([a-zA-Z.]+([\s][a-zA-Z.]+)*){2,}" path="students[1].name"/>
                    <div class="valid-feedback">Valid Name</div>
                    <div class="invalid-feedback">Invalid Name</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant2_rollNo">RollNo</label>
                    <form:input type="text" class="form-control input_text" id="participant2_rollNo" name = "rollNo" placeholder="Enter RollNo. NOT Registration No." pattern="[A-Za-z0-9]+" path="students[1].rollNo"/>
                    <div class="valid-feedback">Valid RollNo</div>
                    <div class="invalid-feedback">Invalid RollNo</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant2_year">Year</label>
                    <form:select id="participant2_year" class="form-select select_text" name="year" path="students[1].year">
                        <form:option value="">Select Year</form:option>
                        <form:option value="II">II</form:option>
                        <form:option value="III">III</form:option>
                        <form:option value="IV">IV</form:option>
                    </form:select>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant2_mobNo">Mobile No</label>
                    <form:input type="tel" class="form-control input_text" id="participant2_mobNo" name = "mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" path="students[1].mobileNo"/>
                    <div class="valid-feedback">Valid Mobile No.</div>
                    <div class="invalid-feedback">Invalid Mobile No.</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant2_emailId">Email Id</label>
                    <form:input type="email" class="form-control input_text" id="participant2_emailId" name = "emailId" placeholder="Use Gmail Address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" path="students[1].emailId"/>
                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                </div>
            </div> 
        </div>
        
        <div class="participant row mt-4 pb-4" id="participant_3">
            
            <h5 class="form-SubTitles"><b>Participant 3</b></h5>

            <div class="row">
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant3_name">Name</label>
                    <form:input type="text" class="form-control input_text participant-name" id="participant3_name" name = "name" placeholder="Full Name with Initial" pattern="^(?!\.)(?!.*\.$)(?!.*\.\.)([a-zA-Z.]+([\s][a-zA-Z.]+)*){2,}" path="students[2].name"/>
                    <div class="valid-feedback">Valid Name</div>
                    <div class="invalid-feedback">Invalid Name</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant3_rollNo">RollNo</label>
                    <form:input type="text" class="form-control input_text" id="participant3_rollNo" name = "rollNo" placeholder="Enter RollNo. NOT Registration No." pattern="[A-Za-z0-9]+" path="students[2].rollNo"/>
                    <div class="valid-feedback">Valid RollNo</div>
                    <div class="invalid-feedback">Invalid RollNo</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant3_year">Year</label>
                    <form:select id="participant3_year" class="form-select select_text" name="year" path="students[2].year">
                        <form:option value="">Select Year</form:option>
                        <form:option value="II">II</form:option>
                        <form:option value="III">III</form:option>
                        <form:option value="IV">IV</form:option>
                    </form:select>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant3_mobNo">Mobile No</label>
                    <form:input type="tel" class="form-control input_text" id="participant3_mobNo" name = "mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" path="students[2].mobileNo"/>
                    <div class="valid-feedback">Valid Mobile No.</div>
                    <div class="invalid-feedback">Invalid Mobile No.</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant3_emailId">Email Id</label>
                    <form:input type="email" class="form-control input_text" id="participant3_emailId" name = "emailId" placeholder="Use Gmail Address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" path="students[2].emailId"/>
                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                </div>
            </div> 
        </div>
        
        <div class="participant row mt-4 pb-4" id="participant_4">
            
            <h5 class="form-SubTitles"><b>Participant 4</b></h5>

            <div class="row">
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant4_name">Name</label>
                    <form:input type="text" class="form-control input_text participant-name" id="participant4_name" name = "name" placeholder="Full Name with Initial" pattern="^(?!\.)(?!.*\.$)(?!.*\.\.)([a-zA-Z.]+([\s][a-zA-Z.]+)*){2,}" path="students[3].name"/>
                    <div class="valid-feedback">Valid Name</div>
                    <div class="invalid-feedback">Invalid Name</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant4_rollNo">RollNo</label>
                    <form:input type="text" class="form-control input_text" id="participant4_rollNo" name = "rollNo" placeholder="Enter RollNo. NOT Registration No." pattern="[A-Za-z0-9]+" path="students[3].rollNo"/>
                    <div class="valid-feedback">Valid RollNo</div>
                    <div class="invalid-feedback">Invalid RollNo</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant4_year">Year</label>
                    <form:select id="participant4_year" class="form-select select_text" name="year" path="students[3].year">
                        <form:option value="">Select Year</form:option>
                        <form:option value="II">II</form:option>
                        <form:option value="III">III</form:option>
                        <form:option value="IV">IV</form:option>
                    </form:select>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant4_mobNo">Mobile No</label>
                    <form:input type="tel" class="form-control input_text" id="participant4_mobNo" name = "mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" path="students[3].mobileNo"/>
                    <div class="valid-feedback">Valid Mobile No.</div>
                    <div class="invalid-feedback">Invalid Mobile No.</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant4_emailId">Email Id</label>
                    <form:input type="email" class="form-control input_text" id="participant4_emailId" name = "emailId" placeholder="Use Gmail Address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" path="students[3].emailId"/>
                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                </div>
            </div> 
        </div>
        
        <div class="participant row mt-4 pb-4" id="participant_5">
            
            <h5 class="form-SubTitles"><b>Participant 5</b></h5>

            <div class="row">
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant5_name">Name</label>
                    <form:input type="text" class="form-control input_text participant-name" id="participant5_name" name = "name" placeholder="Full Name with Initial" pattern="^(?!\.)(?!.*\.$)(?!.*\.\.)([a-zA-Z.]+([\s][a-zA-Z.]+)*){2,}" path="students[4].name"/>
                    <div class="valid-feedback">Valid Name</div>
                    <div class="invalid-feedback">Invalid Name</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant5_rollNo">RollNo</label>
                    <form:input type="text" class="form-control input_text" id="participant5_rollNo" name = "rollNo" placeholder="Enter RollNo. NOT Registration No." pattern="[A-Za-z0-9]+" path="students[4].rollNo"/>
                    <div class="valid-feedback">Valid RollNo</div>
                    <div class="invalid-feedback">Invalid RollNo</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant5_year">Year</label>
                    <form:select id="participant5_year" class="form-select select_text" name="year" path="students[4].year">
                        <form:option value="">Select Year</form:option>
                        <form:option value="II">II</form:option>
                        <form:option value="III">III</form:option>
                        <form:option value="IV">IV</form:option>
                    </form:select>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant5_mobNo">Mobile No</label>
                    <form:input type="tel" class="form-control input_text" id="participant5_mobNo" name = "mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" path="students[4].mobileNo"/>
                    <div class="valid-feedback">Valid Mobile No.</div>
                    <div class="invalid-feedback">Invalid Mobile No.</div>
                </div>
                <div class="form-group input-field col-sm-4 mt-4  align-items-center">
                    <label class="form-label not_required" for="participant5_emailId">Email Id</label>
                    <form:input type="email" class="form-control input_text" id="participant5_emailId" name = "emailId" placeholder="Use Gmail Address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" path="students[4].emailId"/>
                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                </div>
            </div> 
        </div>
        
        <div class="college row mt-4 pb-4" id="college">

            <h5 class="form-SubTitles"><b>College</b></h5>
            
            <div class="row">
                <div class="col">
                    <div class="form-group input-field mt-3 align-items-center" id="college-fields">
                        <label class="form-label required" for="collegeName">College Name</label>
                        <form:input type="text" class="form-control input_text collegeNameInput" id="collegeName" name = "collegeName" path="students[0].collegeName" required = "required"/>
                        <ul class="list list-group"></ul>

                        <div class="invalid-Custom_feedback mt-1" id="invalid-Custom_feedback" style="color: #dc3545; display: none;">Invalid College Name. Please select from the suggestion list.</div>

                        <div class="invalid-feedback invalid-msg" id="invalid-msg">Invalid College Name</div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
<div class="row mt-2 feeDetails" style="display: none; color: red;" id="eventFeeDetails">
    <div class="col">
        <p>*Registration Fee is Rs.150/participant. <br>*Spot Payment is preferrable.</p>
    </div>
</div>
<div class="row mt-2 feeDetails" style="display: none; color: red;" id="evFeeDetails">
    <div class="col">
        <p>*Registration Fee is Rs.450/participant. <br>*Spot Payment is preferrable.</p>
    </div>
</div>

<div class="row mt-2 feeDetails" style="display: none; color: red;" id="benzFeeDetails">
    <div class="col">
        <p>*Registration Fee is Rs.900/participant. <br>*Spot Payment is preferrable.</p>
    </div>
</div>
     

<div class="form-group mt-4 mt-md-5 text-center justify-content-center align-items-center">
    
    <button class="register-button submit" type="submit" id="submitButton">Register</button>
        
</div>









