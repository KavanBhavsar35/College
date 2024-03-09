<?php
// Display current date and time in different formats
echo "Current Date and Time:</br></br>";
echo "Default format: " . date('Y-m-d H:i:s') . "</br>";
echo "Custom format: " . date('d-m-Y h:i:s A') . "</br></br>";
echo "Timezone: " . date_default_timezone_get() . "</br>";
