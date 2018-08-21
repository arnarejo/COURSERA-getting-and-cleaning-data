
# CodeBook
Code book below describes the variables, the observation data, and clean up the data called ["tidy_data.txt"](tidy_data.txt).

# Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

# Observation Data
For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 66-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

# Variables
### ActivityName
| id |      activityname |
|---:|:-----------------:|
|  1 |           WALKING|
|  2 |  WALKING_UPSTAIRS|
|  3 | WALKING_DOWNSTAIRS|
|  4|            SITTING|
|  5|           STANDING|
|  6|            LAYING|

### SubjectID
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30

### Feature Selection
List of variables in the data tidy_means.txt file:
**subject** Number identifying the person for this activity record.
**time.Body.Acceleration.Mean.X**
**time.Body.Acceleration.Mean.Y**
**time.Body.Acceleration.Mean.Z**                      
**time.Body.Acceleration.Std.X **                      
**time.Body.Acceleration.Std.Y**                       
**time.Body.Acceleration.Std.Z**                       
**time.Gravity.Acceleration.Mean.X**              
**time.Gravity.Acceleration.Mean.Y**                  
**time.Gravity.Acceleration.Mean.Z**                  
**time.Gravity.Acceleration.Std.X**                  
**time.Gravity.Acceleration.Std.Y**                  
**time.Gravity.Acceleration.Std.Z**                  
**time.Body.Acceleration.Jerk.Mean.X **                
**time.Body.Acceleration.Jerk.Mean.Y **                
**time.Body.Acceleration.Jerk.Mean.Z **                
**time.Body.Acceleration.Jerk.Std.X  **                
**time.Body.Acceleration.Jerk.Std.Y  **                
**time.Body.Acceleration.Jerk.Std.Z  **                
**time.Body.Gyro.Mean.X   **                
**time.Body.Gyro.Mean.Y   **                           
**time.Body.Gyro.Mean.Z   **                           
**time.Body.Gyro.Std.X    **                           
**time.Body.Gyro.Std.Y    **                           
**time.Body.Gyro.Std.Z    **                           
**time.Body.Gyro.Jerk.Mean.X **                        
**time.Body.Gyro.Jerk.Mean.Y **                        
**time.Body.Gyro.Jerk.Mean.Z **                        
**time.Body.Gyro.Jerk.Std.X  **                        
**time.Body.Gyro.Jerk.Std.Y  **                        
**time.Body.Gyro.Jerk.Std.Z  **                        
**time.Body.Acceleration.Magnitude.Mean **            
**time.Body.Acceleration.Magnitude.Std  **             
**time.Gravity.Acceleration.Magnitude.Mean  **         
**time.Gravity.Acceleration.Magnitude.Std    **        
**time.Body.Acceleration.Jerk.Magnitude.Mean **        
**time.Body.Acceleration.Jerk.Magnitude.Std  **        
**time.Body.Gyro.Magnitude.Mean **                     
**time.Body.Gyro.Magnitude.Std  **                     
**time.Body.Gyro.Jerk.Magnitude.Mean **             
**time.Body.Gyro.Jerk.Magnitude.Std  **                
**freq.Body.Acceleration.Mean.X    **               
**freq.Body.Acceleration.Mean.Y    **                  
**freq.Body.Acceleration.Mean.Z    **                  
**freq.Body.Acceleration.Std.X     **                  
**freq.Body.Acceleration.Std.Y    **                   
**freq.Body.Acceleration.Std.Z     **                  
**freq.Body.Acceleration.Mean.Freq.X **               
**freq.Body.Acceleration.Mean.Freq.Y **                
**freq.Body.Acceleration.Mean.Freq.Z **                
**freq.Body.Acceleration.Jerk.Mean.X **                
**freq.Body.Acceleration.Jerk.Mean.Y **                
**freq.Body.Acceleration.Jerk.Mean.Z **                
**freq.Body.Acceleration.Jerk.Std.X  **                
**freq.Body.Acceleration.Jerk.Std.Y  **                
**freq.Body.Acceleration.Jerk.Std.Z  **                
**freq.Body.Acceleration.Jerk.Mean.Freq.X **           
**freq.Body.Acceleration.Jerk.Mean.Freq.Y **           
**freq.Body.Acceleration.Jerk.Mean.Freq.Z **           
**freq.Body.Gyro.Mean.X **                            
**freq.Body.Gyro.Mean.Y **                             
**freq.Body.Gyro.Mean.Z **                             
**freq.Body.Gyro.Std.X  **                             
**freq.Body.Gyro.Std.Y  **                             
**freq.Body.Gyro.Std.Z  **                             
**freq.Body.Gyro.Mean.Freq.X  **                       
**freq.Body.Gyro.Mean.Freq.Y  **                       
**freq.Body.Gyro.Mean.Freq.Z  **                       
**freq.Body.Acceleration.Magnitude.Mean **             
**freq.Body.Acceleration.Magnitude.Std  **             
**freq.Body.Acceleration.Magnitude.Mean.Freq **        
**freq.Body.Acceleration.Jerk.Magnitude.Mean **        
**freq.Body.Acceleration.Jerk.Magnitude.Std  **
**freq.Body.Acceleration.Jerk.Magnitude.Mean.Freq**
**freq.Body.Gyro.Magnitude.Mean **            
**freq.Body.Gyro.Magnitude.Std  **               
**freq.Body.Gyro.Magnitude.Mean.Freq **             
**freq.Body.Gyro.Jerk.Magnitude.Mean **              
**freq.Body.Gyro.Jerk.Magnitude.Std  **                
**freq.Body.Gyro.Jerk.Magnitude.Mean.Freq **          
**angle.Time.Body.AccelerationMean.gravity **         
**angle.Time.Body.Acceleration.Jerk.Mean.Gravity.Mean**
**angle.Time.Body.Gyro.Mean.Gravity.Mean **           
**angle.Time.Body.Gyro.Jerk.Mean.Gravity.Mean **       
**angle.X.Gravity.Mean **                              
**angle.Y.Gravity.Mean **                              
**angle.Z.Gravity.Mean **                         
**activity** Type of activity: walking, walking-upstairs, walking_downstairs, sitting, standing, laying
