<?php 
include('include/db.php');




$contactSql="SELECT * FROM contact ";
$contactQuery=mysqli_query($conn,$contactSql);
$conntactFeatch=mysqli_fetch_assoc($contactQuery);

   
$errors = [];
$firstname = $lastname = $number = $email = $message = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $firstname = trim($_POST['firstname'] ?? '');
    $lastname = trim($_POST['lastname'] ?? '');
    $number = trim($_POST['number'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $message = trim($_POST['message'] ?? '');

    // Field-wise validation
    if (empty($firstname)) {
        $errors['firstname'] = "First Name is required.";
    }

    if (empty($lastname)) {
        $errors['lastname'] = "Last Name is required.";
    }

    if (empty($number)) {
        $errors['number'] = "Phone number is required.";
    } elseif (!preg_match('/^[0-9]{10}$/', $number)) {
        $errors['number'] = "Phone number must be exactly 10 digits.";
    }

    if (empty($email)) {
        $errors['email'] = "Email is required.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = "Invalid email format.";
    }

    if (empty($message)) {
        $errors['message'] = "Message is required.";
    }

    // If no errors, insert into database
    if (empty($errors)) {
        $firstname = mysqli_real_escape_string($conn, $firstname);
        $lastname = mysqli_real_escape_string($conn, $lastname);
        $number = mysqli_real_escape_string($conn, $number);
        $email = mysqli_real_escape_string($conn, $email);
        $message = mysqli_real_escape_string($conn, $message);

        $sql = "INSERT INTO contact_us (firstname, lastname, number, email, message) 
                VALUES ('$firstname', '$lastname', '$number', '$email', '$message')";

        if (mysqli_query($conn, $sql)) {
            echo json_encode([
                'status' => 'success',
                'message' => 'Message sent successfully!'
            ]);
            exit;
        } else {
            echo json_encode([
                'status' => 'error',
                'message' => 'Something went wrong. Try again.',
                'errors' => []
            ]);
            exit;
        }
    } else {
        echo json_encode([
            'status' => 'error',
            'errors' => $errors,
            'formdata' => [
                'firstname' => $firstname,
                'lastname' => $lastname,
                'number' => $number,
                'email' => $email,
                'message' => $message
            ]
        ]);
        exit;
    }
}
include('header.php');
?>
    <main class="main__content_wrapper">
            <!-- Start breadcrumb section -->
        <section class="breadcrumb__section breadcrumb__bg">
            <div class="container">
                <div class="row row-cols-1">
                    <div class="col">
                        <div class="breadcrumb__content">
                            <h1 class="breadcrumb__content--title text-white mb-10">Contact Us</h1>
                            <ul class="breadcrumb__content--menu d-flex">
                                <li class="breadcrumb__content--menu__items"><a class="text-white" href="index.php">Home</a></li>
                                <li class="breadcrumb__content--menu__items"><span class="text-white">Contact Us</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End breadcrumb section -->

    
        
        <!-- Start contact section -->
        <section class="contact__section section--padding">
            <div class="container">
                <div class="section__heading mb-40">
                    <h2 class="section__heading--maintitle contact__section--hrading mb-10">Get In Touch</h2>
                    <p class="contact__section--hrading__desc">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere voluptatibus delectus blanditiis rerum, explicabo <br> aspernatur magni nihil distinctio voluptatum quo sit quidem minima repellat sapiente.</p>
                </div>
                <div class="main__contact--area">
                    <div class="row align-items-center row-md-reverse">
                        <div class="col-lg-5">
                            <div class="contact__info border-radius-10">
                                <div class="contact__info--items">
                                    <h3 class="contact__info--content__title text-white mb-15">Contact Us</h3>
                                    <div class="contact__info--items__inner d-flex">
                                        <div class="contact__info--icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="31.568" height="31.128" viewbox="0 0 31.568 31.128">
                                                <path id="ic_phone_forwarded_24px" d="M26.676,16.564l7.892-7.782L26.676,1V5.669H20.362v6.226h6.314Zm3.157,7a18.162,18.162,0,0,1-5.635-.887,1.627,1.627,0,0,0-1.61.374l-3.472,3.424a23.585,23.585,0,0,1-10.4-10.257l3.472-3.44a1.48,1.48,0,0,0,.395-1.556,17.457,17.457,0,0,1-.9-5.556A1.572,1.572,0,0,0,10.1,4.113H4.578A1.572,1.572,0,0,0,3,5.669,26.645,26.645,0,0,0,29.832,32.128a1.572,1.572,0,0,0,1.578-1.556V25.124A1.572,1.572,0,0,0,29.832,23.568Z" transform="translate(-3 -1)" fill="currentColor"></path>
                                            </svg>
                                        </div>
                                        <div class="contact__info--content">
                                            <p class="contact__info--content__desc text-white">Change the design through a range <br> <a href="tel:+01234-567890"><?php echo $conntactFeatch ['phone_no'] ?></a> </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="contact__info--items">
                                    <h3 class="contact__info--content__title text-white mb-15">Email Address</h3>
                                    <div class="contact__info--items__inner d-flex">
                                        <div class="contact__info--icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="31.57" height="31.13" viewbox="0 0 31.57 31.13">
                                                <path id="ic_email_24px" d="M30.413,4H5.157C3.421,4,2.016,5.751,2.016,7.891L2,31.239c0,2.14,1.421,3.891,3.157,3.891H30.413c1.736,0,3.157-1.751,3.157-3.891V7.891C33.57,5.751,32.149,4,30.413,4Zm0,7.783L17.785,21.511,5.157,11.783V7.891l12.628,9.728L30.413,7.891Z" transform="translate(-2 -4)" fill="currentColor"></path>
                                            </svg>  
                                        </div>
                                        <div class="contact__info--content">
                                            <p class="contact__info--content__desc text-white"> <a href="mailto:info@example.com"><?php echo $conntactFeatch ['email'] ?></a> </p> 
                                        </div>
                                    </div>
                                </div>
                                <div class="contact__info--items">
                                    <h3 class="contact__info--content__title text-white mb-15">Office Location</h3>
                                    <div class="contact__info--items__inner d-flex">
                                        <div class="contact__info--icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="31.57" height="31.13" viewbox="0 0 31.57 31.13">
                                                <path id="ic_account_balance_24px" d="M5.323,14.341V24.718h4.985V14.341Zm9.969,0V24.718h4.985V14.341ZM2,32.13H33.57V27.683H2ZM25.262,14.341V24.718h4.985V14.341ZM17.785,1,2,8.412v2.965H33.57V8.412Z" transform="translate(-2 -1)" fill="currentColor"></path>
                                            </svg> 
                                        </div>
                                        <div class="contact__info--content">
                                            <p class="contact__info--content__desc text-white"><?php echo $conntactFeatch ['addr'] ?></p> 
                                        </div>
                                    </div>
                                </div>
                                <div class="contact__info--items">
                                    <h3 class="contact__info--content__title text-white mb-15">Follow Us</h3>
                                    <ul class="contact__info--social d-flex">
                                        <li class="contact__info--social__list">
                                            <a class="contact__info--social__icon" target="_blank" href="../../../index.htm">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="7.667" height="16.524" viewbox="0 0 7.667 16.524">
                                                    <path data-name="Path 237" d="M967.495,353.678h-2.3v8.253h-3.437v-8.253H960.13V350.77h1.624v-1.888a4.087,4.087,0,0,1,.264-1.492,2.9,2.9,0,0,1,1.039-1.379,3.626,3.626,0,0,1,2.153-.6l2.549.019v2.833h-1.851a.732.732,0,0,0-.472.151.8.8,0,0,0-.246.642v1.719H967.8Z" transform="translate(-960.13 -345.407)" fill="currentColor"></path>
                                                </svg>
                                                <span class="visually-hidden">Facebook</span>
                                            </a>
                                        </li>
                                        <li class="contact__info--social__list">
                                            <a class="contact__info--social__icon" target="_blank" href="../../../index-1.htm">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16.489" height="13.384" viewbox="0 0 16.489 13.384">
                                                    <path data-name="Path 303" d="M966.025,1144.2v.433a9.783,9.783,0,0,1-.621,3.388,10.1,10.1,0,0,1-1.845,3.087,9.153,9.153,0,0,1-3.012,2.259,9.825,9.825,0,0,1-4.122.866,9.632,9.632,0,0,1-2.748-.4,9.346,9.346,0,0,1-2.447-1.11q.4.038.809.038a6.723,6.723,0,0,0,2.24-.376,7.022,7.022,0,0,0,1.958-1.054,3.379,3.379,0,0,1-1.958-.687,3.259,3.259,0,0,1-1.186-1.666,3.364,3.364,0,0,0,.621.056,3.488,3.488,0,0,0,.885-.113,3.267,3.267,0,0,1-1.374-.631,3.356,3.356,0,0,1-.969-1.186,3.524,3.524,0,0,1-.367-1.5v-.057a3.172,3.172,0,0,0,1.544.433,3.407,3.407,0,0,1-1.1-1.214,3.308,3.308,0,0,1-.4-1.609,3.362,3.362,0,0,1,.452-1.694,9.652,9.652,0,0,0,6.964,3.538,3.911,3.911,0,0,1-.075-.772,3.293,3.293,0,0,1,.452-1.694,3.409,3.409,0,0,1,1.233-1.233,3.257,3.257,0,0,1,1.685-.461,3.351,3.351,0,0,1,2.466,1.073,6.572,6.572,0,0,0,2.146-.828,3.272,3.272,0,0,1-.574,1.083,3.477,3.477,0,0,1-.913.8,6.869,6.869,0,0,0,1.958-.546A7.074,7.074,0,0,1,966.025,1144.2Z" transform="translate(-951.23 -1140.849)" fill="currentColor"></path>
                                                </svg>
                                                <span class="visually-hidden">Twitter</span>
                                            </a>
                                        </li>
                                        <li class="contact__info--social__list">
                                            <a class="contact__info--social__icon" target="_blank" href="../../../en/index.htm">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16.482" height="16.481" viewbox="0 0 16.482 16.481">
                                                    <path data-name="Path 284" d="M879,926.615a4.479,4.479,0,0,1,.622-2.317,4.666,4.666,0,0,1,1.676-1.677,4.482,4.482,0,0,1,2.317-.622,4.577,4.577,0,0,1,2.43.678,7.58,7.58,0,0,1,5.048.961,7.561,7.561,0,0,1,3.786,6.593,8,8,0,0,1-.094,1.206,4.676,4.676,0,0,1,.7,2.411,4.53,4.53,0,0,1-.622,2.326,4.62,4.62,0,0,1-1.686,1.686,4.626,4.626,0,0,1-4.756-.075,7.7,7.7,0,0,1-1.187.094,7.623,7.623,0,0,1-7.647-7.647,7.46,7.46,0,0,1,.094-1.187A4.424,4.424,0,0,1,879,926.615Zm4.107,1.714a2.473,2.473,0,0,0,.282,1.234,2.41,2.41,0,0,0,.782.829,5.091,5.091,0,0,0,1.215.565,15.981,15.981,0,0,0,1.582.424q.678.151.979.235a3.091,3.091,0,0,1,.593.235,1.388,1.388,0,0,1,.452.348.738.738,0,0,1,.16.481.91.91,0,0,1-.48.753,2.254,2.254,0,0,1-1.271.321,2.105,2.105,0,0,1-1.253-.292,2.262,2.262,0,0,1-.65-.838,2.42,2.42,0,0,0-.414-.546.853.853,0,0,0-.584-.17.893.893,0,0,0-.669.283.919.919,0,0,0-.273.659,1.654,1.654,0,0,0,.217.782,2.456,2.456,0,0,0,.678.763,3.64,3.64,0,0,0,1.158.574,5.931,5.931,0,0,0,1.639.235,5.767,5.767,0,0,0,2.072-.339,2.982,2.982,0,0,0,1.356-.961,2.306,2.306,0,0,0,.471-1.431,2.161,2.161,0,0,0-.443-1.375,3.009,3.009,0,0,0-1.2-.894,10.118,10.118,0,0,0-1.865-.575,11.2,11.2,0,0,1-1.309-.311,2.011,2.011,0,0,1-.8-.452.992.992,0,0,1-.3-.744,1.143,1.143,0,0,1,.565-.97,2.59,2.59,0,0,1,1.488-.386,2.538,2.538,0,0,1,1.074.188,1.634,1.634,0,0,1,.622.49,3.477,3.477,0,0,1,.414.753,1.568,1.568,0,0,0,.4.594.866.866,0,0,0,.574.2,1,1,0,0,0,.706-.254.828.828,0,0,0,.273-.631,2.234,2.234,0,0,0-.443-1.253,3.321,3.321,0,0,0-1.158-1.046,5.375,5.375,0,0,0-2.524-.527,5.764,5.764,0,0,0-2.213.386,3.161,3.161,0,0,0-1.422,1.083A2.738,2.738,0,0,0,883.106,928.329Z" transform="translate(-878.999 -922)" fill="currentColor"></path>
                                                    </svg>
                                                    <span class="visually-hidden">Skype</span>
                                            </a>
                                        </li>
                                        <li class="contact__info--social__list">
                                            <a class="contact__info--social__icon" target="_blank" href="../../../index-4.htm">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16.49" height="11.582" viewbox="0 0 16.49 11.582">
                                                    <path data-name="Path 321" d="M967.759,1365.592q0,1.377-.019,1.717-.076,1.114-.151,1.622a3.981,3.981,0,0,1-.245.925,1.847,1.847,0,0,1-.453.717,2.171,2.171,0,0,1-1.151.6q-3.585.265-7.641.189-2.377-.038-3.387-.085a11.337,11.337,0,0,1-1.5-.142,2.206,2.206,0,0,1-1.113-.585,2.562,2.562,0,0,1-.528-1.037,3.523,3.523,0,0,1-.141-.585c-.032-.2-.06-.5-.085-.906a38.894,38.894,0,0,1,0-4.867l.113-.925a4.382,4.382,0,0,1,.208-.906,2.069,2.069,0,0,1,.491-.755,2.409,2.409,0,0,1,1.113-.566,19.2,19.2,0,0,1,2.292-.151q1.82-.056,3.953-.056t3.952.066q1.821.067,2.311.142a2.3,2.3,0,0,1,.726.283,1.865,1.865,0,0,1,.557.49,3.425,3.425,0,0,1,.434,1.019,5.72,5.72,0,0,1,.189,1.075q0,.095.057,1C967.752,1364.1,967.759,1364.677,967.759,1365.592Zm-7.6.925q1.49-.754,2.113-1.094l-4.434-2.339v4.66Q958.609,1367.311,960.156,1366.517Z" transform="translate(-951.269 -1359.8)" fill="currentColor"></path>
                                                </svg>
                                                <span class="visually-hidden">Youtube</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="contact__form">
    
                                <form class="contact__form--inner contactForm">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6">
                                            <div class="contact__form--list mb-20">
                                                <label class="contact_form--label" for="input1">First Name <span class="contactform--label_star">*</span></label>
                                                <input class="contact__form--input" name="firstname" id="input1" placeholder="Your First Name" type="text">
                                                <p class="fname_error"  style="color:red;"></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="contact__form--list mb-20">
                                                <label class="contact_form--label" for="input2">Last Name <span class="contactform--label_star">*</span></label>
                                                <input class="contact__form--input" name="lastname" id="input2" placeholder="Your Last Name" type="text">
                                                 <p class="lname_error"  style="color:red;"></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="contact__form--list mb-20">
                                                <label class="contact_form--label" for="input3">Phone Number <span class="contactform--label_star">*</span></label>
                                                <input class="contact__form--input" name="number" id="input3" placeholder="Phone number" type="text">
                                                 <p class="num_error"  style="color:red;"></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="contact__form--list mb-20">
                                                <label class="contact_form--label" for="input4">Email <span class="contactform--label_star">*</span></label>
                                                <input class="contact__form--input" name="email" id="input4" placeholder="Email" type="text">
                                                 <p class="email_error"  style="color:red;"></p>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="contact__form--list mb-10">
                                                <label class="contact_form--label" for="input5">Write Your Message <span class="contactform--label_star">*</span></label>
                                                <textarea class="contact__form--textarea" name="message" id="input5" placeholder="Write Your Message"></textarea>
                                                 <p class="message_error"  style="color:red;"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="account_login--remember position_relative mb-15">
                                        <input class="checkout__checkbox--input" id="check2" type="checkbox">
                                        <span class="checkout__checkbox--checkmark"></span>
                                        <label class="checkout_checkbox--label login_remember--label" for="check2">
                                            Accept Terms & Condition</label>
                                    </div> -->
                                    <button class="contact_form--btn primary_btn" type="submit">Submit Now</button>  
                                    <p class="form-messege" style="color:red;"></p>
                                </form>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End contact section -->

        <!-- Start contact map area -->
        <div class="contact__map--area section--padding pt-0">
            <iframe class="contact__map--iframe" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7887.465355142307!2d-0.13384360843222626!3d51.4876034467734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48760532743b90e1%3A0x790260718555a20c!2sU.S.%20Embassy%2C%20London!5e0!3m2!1sen!2sbd!4v1632035375945!5m2!1sen!2sbd" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        <!-- End contact map area -->

       <!-- Start Newsletter banner section -->
        <section class="newsletter__banner--section section--padding pt-0">
            <div class="container">
                <div class="newsletter__banner--thumbnail position__relative">
                    <img class="newsletter__banner--thumbnail__img" src="assets/img/banner/banner-bg7.webp" alt="newsletter-banner">
                    <div class="newsletter__content newsletter__subscribe">
                        <h5 class="newsletter__content--subtitle text-white">Want to offer regularly ?</h5>
                        <h2 class="newsletter__content--title text-white h3 mb-25">Subscribe Our Newsletter <br>
                            for Get Daily Update</h2>
                        <form class="newsletter__subscribe--form position__relative" action="#">
                            <label>
                                <input class="newsletter__subscribe--input" placeholder="Enter your email address" type="email">
                            </label>
                            <button class="newsletter__subscribe--button primary__btn" type="submit">Subscribe
                                <svg class="newsletter__subscribe--button__icon" xmlns="http://www.w3.org/2000/svg" width="9.159" height="7.85" viewbox="0 0 9.159 7.85">
                                    <path data-name="Icon material-send" d="M3,12.35l9.154-3.925L3,4.5,3,7.553l6.542.872L3,9.3Z" transform="translate(-3 -4.5)" fill="currentColor"></path>
                                </svg>
                            </button>
                        </form>   
                    </div>
                </div>
            </div>
        </section>
        <!-- End Newsletter banner section -->

    </main>
    <?php include('footer.php')?>
<!-- SweetAlert2 CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
               $(document).ready(function() {
        function updateCartCount() {
            $.ajax({
                url: "cart_count.php",
                type: "GET",
                dataType: "json",
                success: function(response) {
                    if (response.success) {
                        $("#cartCountValue").text(response.count);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("Cart Count Error:", error);
                }
            });
        }

        updateCartCount();
    });
    $(document).ready(function () {
        // ✅ Phone number live validation
            $("input[name='number']").on("input", function () {
                let input = $(this).val();
                input = input.replace(/\D/g, ""); // Remove non-digit characters

                // Limit the input to 10 digits
                if (input.length > 10) {
                    input = input.slice(0, 10); // Trim to 10 digits
                    $(".num_error").text("Only 10 digits are allowed");
                } else {
                    $(".num_error").text(""); // Clear error if valid
                }
                $(this).val(input); // Update input field with the cleaned value
            });
    //form part
        $(".contactForm").on('submit', function (eve) {
            eve.preventDefault();
            let formdata = new FormData(this);
            formdata.append('create', 1);
            $.ajax({
                url: 'contact.php',
                type: 'POST',
                data: formdata,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (response) {
                     $(".fname_error, .lname_error, .num_error, .email_error, .message_error").text("");
                    if (response.status == "success") {
                                            Swal.fire({
                                title: 'submited',
                                text: 'The details are subbmitted successfully.',
                                icon: 'success',
                                timer: 3000, // 3 seconds
                                timerProgressBar: true,
                                showConfirmButton: false
                            }).then(() =>{
                                     document.querySelector(".contactForm").reset();
                            });
                            
                    }
                    else if (response.status === "error") {

                        // Show validation errors
                        if (response.errors.firstname) $(".fname_error").text(response.errors.firstname);
                        if (response.errors.lastname) $(".lname_error").text(response.errors.lastname);
                        if (response.errors.number) $(".num_error").text(response.errors.number);
                        if (response.errors.email) $(".email_error").text(response.errors.email);
                        if (response.errors.message) $(".message_error").text(response.errors.message);

                        // Refill form fields
                        if (response.formdata) {
                            $('input[name="firstname"]').val(response.formdata.firstname);
                            $('input[name="lastname"]').val(response.formdata.lastname);
                            $('input[name="number"]').val(response.formdata.number);
                            $('input[name="email"]').val(response.formdata.email);
                            $('textarea[name="message"]').val(response.formdata.message);
                        }
                    }
                },
                error: function (xhr, status, error) {
                    console.log(xhr);
                    console.log(status);
                    console.log(error);
                }
            });
        });
        
    });
    </script>