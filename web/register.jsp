<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QuickBook</title>

        <link href="register.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <style>
        </style>
    </head>
    <body>

        <header>
            <div class="title">
                <h1>Hospital Bed Provider</h1>
            </div>
            <div class="titlebox">
                <div class="logo">
                    <img src="images/quickbooks.png" alt="logo">
                    <h2>QuickBook</h2>
                </div>
                <nav>
                    <ul>
                        <a href="index.html"><li>Home</li></a>
                        <a href="gallery.html"><li>Gallery</li></a>
                        <li>Login</li>
                        <a href="search.html"> <li>Book</li></a>
                        <li>About us</li>
                    </ul>
                </nav>
            </div>
        </header>




        <div class="container">
            <div class="formbox">

                <h2> Booking Application</h2>

                <form action="database.jsp">

                    <fieldset>
                        <legend>Personal Details</legend>
                        <div class="fieldname">
                            <label> Name:</label>
                            <input type="text" placeholder="Enter your name" name="name" required>
                        </div>
                        <div class="fieldname">
                            <label>D.O.B:</label>
                            <input type="date" name="dob" required>
                        </div>
                        <div class="fieldname">
                            <label>Gender:</label>
                            <input class="gen_in" type="radio" name="gender" value="M" required><span>M</span>
                            <input class="gen_in" type="radio" name="gender" value="F" required><span>F</span>
                        </div>
                        <div class="fieldname">
                            <label>Age:</label>
                            <input type="text" placeholder="Enter your age" name="age" maxlength="2" required>
                        </div>
                        <div class="fieldname">
                            <label>Blood group:</label>
                            <select name="blood">
                                <option value="none"></option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                            </select>
                        </div>
                        <div class="fieldname">
                            <label>Aadhaar no.:</label>
                            <input type="text" maxlength="12" name="aadhaar" required>
                        </div>
                        <div class="fieldname">
                            <label>Pan no.:</label>
                            <input type="text" placeholder="Enter your Pan no." maxlength="10" name="pan" >
                        </div>
                    </fieldset>

                    <br>
                    <fieldset>
                        <legend>Contact Details:</legend>
                        <div class="fieldname">
                            <label>Contact no.</label>
                            <input type="text" placeholder="Enter your phone no." name="phone" maxlength="10"  required>
                        </div>
                        <div class="fieldname">
                            <label>Email:</label>
                            <input type="email" placeholder="Enter your Email" name="email"  required>
                        </div>
                        <div class="fieldname">
                            <label>Password</label>
                            <input type="password" placeholder="Enter password" name="password"  required>
                        </div>
                        <div class="fieldname">
                            <label>Address:</label>
                            <textarea type="textarea" placeholder="Address" name="address"  required></textarea>
                        </div>
                    </fieldset>
                    <br>
                    <fieldset>
                        <legend>Booking Details</legend>
                        <!--                        <div class="fieldname">-->
                        <!--                        <label>Hospital name</label>
                                                <input type="text" value="hello" name="h_name" readonly >
                                                </div>
                                                 <div class="fieldname">
                                                <label>Contact no.</label>
                                                <input type="text" value="contact" name="h_phone" maxlength="10" readonly>
                                                </div>
                        -->                            
                        <div class="fieldname">
                            <label>Ward:</label>
                            <select name="ward">
                                <option value="none">Select your ward</option>
                                <option value="General ward">General ward</option>
                                <option value="Emergency ward">Emergency ward</option>
                                <option value="Intensive care unit(ICU)">Intensive care unit(ICU)</option>
                                <option value="Nursery">Nursery</option>
                                <option value="Delivery">Delivery</option>
                                <option value="Labor">Labor</option>

                            </select>
                        </div>
                        <div class="fieldname">
                            <label>Bed Type:</label>
                            <select name="bed">
                                <option value="none">Select your Bed</option>
                                <option value="Plain Bed">Plain Bed</option>
                                <option value="Folding Bed">Folding Bed</option>
                                <option value="Automatic Bed">Automatic Bed</option>
                                <option value="Electric Bed">Electric Bed</option>

                            </select>
                        </div>
                        <div class="fieldname">
                            <label>Admit date:</label>
                            <input type="date" name="admit_date" required>
                        </div>
                        <div class="fieldname">
                            <label>Charge :</label>
                            <select name="charge">
                                <option value="none">Select price</option>
                                <option value="300rs per day">300rs per day</option>
                                <option value="600rs per day">600rs per day</option>
                                <option value="800rs per day">800rs per day</option>
                                <option value="1100rs per day">1100rs per day</option>
                                <option value="1500rs per day">1500rs per day</option>


                            </select>
                        </div>


                        <!--                        <div class="fieldname">
                                                <label>Address</label>
                                                <input type="text" value="world" name="h_address" readonly="">
                                                </div>-->
                    </fieldset>
                    <div class="sub">
                        <input type="submit" value="Book">
                        <input type="reset" value="Cancel">

                    </div>

                </form>
            </div>
        </div>

        <footer>
            <p>All rights are reserved by Administration</p>
        </footer>

    </body>
</html>
