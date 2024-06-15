# Automated-Latte-Art-with-Using-ABB-s-YuMi

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://cdn.haitrieu.com/wp-content/uploads/2021/10/Logo-DH-Cong-Nghe-UET.png">
    <source media="(prefers-color-scheme: light)" srcset="https://cdn.haitrieu.com/wp-content/uploads/2021/10/Logo-DH-Cong-Nghe-UET.png">
    <img alt="Hugging Face Transformers Library" src="https://cdn.haitrieu.com/wp-content/uploads/2021/10/Logo-DH-Cong-Nghe-UET.png" width="152" height="100" style="max-width: 100%;">
  </picture>
  <br/>
  <br/>
</p>

<p align="center">
    <a href="https://github.com/TranThanhTuan2509/Automated-Latte-Art-with-Using-ABB-s-YuMi/blob/main/Automatic_Coffee_Maker_Robot_Arm_Group_17-1.pdf"><img alt="Documentation" src="https://img.shields.io/website/http/huggingface.co/docs/transformers/index.svg?down_color=blue&down_message=offline&up_message=pdf"></a>
</p>
<p align="center">
  <a> Authors: Tran Thanh Tuan - Nguyen Van Dien - Vu Duc Hieu</a>
</p>

# Introduction

![yumi-ezgif com-video-to-gif-converter](https://github.com/TranThanhTuan2509/Automated-Latte-Art-with-Using-ABB-s-YuMi/assets/119112296/19ab4562-aca1-4242-bf89-4fc44e476ccb)

- My Kinematics and Dynamics project for the final-term.
- Creating a simple yet unique project using the ABB's YuMi dual-arm robot have already helped me earn an A+.

# Methodology
- Here’s a simple diagram to illustrate the setup:


                      +-----------------+     +-----------------+      +------------------+
                      | Espresso Machine| --> |  Robotic Arm 1  | -->  | Cup with Espresso|
                      +-----------------+     +-----------------+      +------------------+
                                                                            |
                                                                            v
                      +-----------------+     +-----------------+      +------------------+
                      |  Milk Frother   | --> |  Robotic Arm 2  | -->  |  Pouring Milk    |
                      +-----------------+     +-----------------+      +------------------+
                                                                            |
                                                                            v
                                                                      +------------------+
                                                                      |  Latte Art Cup   |
                                                                      +------------------+
- Here’s a simple control diagram: 


                  Object position predicting + robot Start coordinate --> Position, Velocity and Acceleration Trajectory
                                                                                                   |
                                                                                                   V
                          EF <-- Forward kinematicS <-- Motor For Robotic Arm 1 and 2 <-- Inverse Kinematics 

- YuMi has 7 joints:

![image](https://github.com/TranThanhTuan2509/Automated-Latte-Art-with-Using-ABB-s-YuMi/assets/119112296/a87343bd-a67a-490d-9f9c-26ec2d5c93ee)

- D-H table for YuMi's right hand:

![image](https://github.com/TranThanhTuan2509/Automated-Latte-Art-with-Using-ABB-s-YuMi/assets/119112296/8e57fd42-b570-45e5-ab8e-831c2dd7bd1c)
  
- For more information about YuMi' workspace and Position, Velocity and Acceleration Trajectory, please checking "pdf" file on top.

