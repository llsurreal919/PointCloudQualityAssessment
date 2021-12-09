# Point Cloud Quality Assessment with Earth Mover's Distance of Point Feature Histogram

## Abstract

Objective quality assessment for point cloud is critical for various real applications, while it is still a challenging task. First, point cloud is formed by unstructured 3D points, which makes the topology is more complex as compared to the 2D image/video. Second, the quality impairment generally involves the distortion in both geometric attributes and color properties, where the measurement of the geometric distortion is more confusing. In this paper, we proposed a new perceptual quality assessment model for point cloud, which attempts to follow the perceptual features of Human Visual System (HVS) as well as the intrinsic characteristics of the point cloud. The point cloud is first pre-processed to extract the geometric skeleton keypoints with graph filtering-based re-sampling, and local neighboring regions around the geometric skeleton keypoints are constructed by k-nearest neighbors (KNN) clustering. For geometric distortion, the point feature histogram (PFH) is extracted as the feature descriptor, and the earth mover's distance (EMD) between the PFHs of the corresponding local neighboring regions in the reference and the distorted point clouds is calculated as the geometric quality measurement; For color distortion, as similar to structural similarity index metric (SSIM), the statistical moments between the corresponding local neighboring regions of the reference and the distorted point clouds are computed as the color quality measurement. Finally, the global perceptual quality assessment model is obtained as the linear weighting aggregation of the geometric and color quality measurement. The experimental results on extensive datasets show that the proposed method achieves the leading performance as compared to the state-of-the-art methods with less computing time. Meanwhile, the experimental results also demonstrate the robustness of the proposed method across various distortion types.

## Diagram of the paper

The diagram of the proposed point cloud quality assessment model.

![flowchart](image/flowchart.jpg)


## Experimental Results

1.SJTU-PCQA Database

(1)Model Performance on SJTU-PCQA Database(PLCC，SROCC，RMSE).

![SJTU-PCQA](image/SJTU-PCQA.png)


(2)Scatter plots for all eight models.

![p2po](image/p2po.jpg)
![p2po-H](image/p2po-H.jpg)
![p2pl](image/p2pl.jpg)
![p2pl-H](image/p2pl-H.jpg)
![AS](image/AS.jpg)
![3D-2D-PE](image/3D-2D-PE.jpg)
![GraphSIM](image/GraphSIM.jpg)
![Proposed](image/Proposed.jpg)

2.ICIP2020 Database

Model Performance on ICIP2020 Database(PLCC，SROCC，RMSE).

![ICIP](image/ICIP.png)

3.IRPC Database

Model Performance on IRPC Database(PLCC，SROCC，RMSE).

![IRPC](image/IRPC.png)

4.G-PCD Database

Model Performance on G-PCD Database(PLCC，SROCC，RMSE).

![G-PCD](image/G-PCD.png)

5.Time Complexity

Comparison of the time complexity of the other two models(3D-2D-PE and GraphSIM) and our proposed model

![time](image/time.png)

## Code

You can perform "**test.m**" in file "code" to obtain an objective quality score for the distortion point cloud

