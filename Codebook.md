Codebook
================

### Metadata

#### Description

**Dataset name**: tidy

The dataset has N=180 rows and 68 columns. 180 rows have no missing
values on any column.

<details>

<summary title="Expand this section to see some additional metadata in a structured format that is useful for search engines">Metadata
for search engines</summary>

  - **Date published**: 2020-06-11

<table class="kable_wrapper">

<tbody>

<tr>

<td>

| x                                   |
| :---------------------------------- |
| activity\_label                     |
| subject\_id                         |
| average.tBodyAcc.mean…X             |
| average.tBodyAcc.mean…Y             |
| average.tBodyAcc.mean…Z             |
| average.tBodyAcc.std…X              |
| average.tBodyAcc.std…Y              |
| average.tBodyAcc.std…Z              |
| average.tGravityAcc.mean…X          |
| average.tGravityAcc.mean…Y          |
| average.tGravityAcc.mean…Z          |
| average.tGravityAcc.std…X           |
| average.tGravityAcc.std…Y           |
| average.tGravityAcc.std…Z           |
| average.tBodyAccJerk.mean…X         |
| average.tBodyAccJerk.mean…Y         |
| average.tBodyAccJerk.mean…Z         |
| average.tBodyAccJerk.std…X          |
| average.tBodyAccJerk.std…Y          |
| average.tBodyAccJerk.std…Z          |
| average.tBodyGyro.mean…X            |
| average.tBodyGyro.mean…Y            |
| average.tBodyGyro.mean…Z            |
| average.tBodyGyro.std…X             |
| average.tBodyGyro.std…Y             |
| average.tBodyGyro.std…Z             |
| average.tBodyGyroJerk.mean…X        |
| average.tBodyGyroJerk.mean…Y        |
| average.tBodyGyroJerk.mean…Z        |
| average.tBodyGyroJerk.std…X         |
| average.tBodyGyroJerk.std…Y         |
| average.tBodyGyroJerk.std…Z         |
| average.tBodyAccMag.mean..          |
| average.tBodyAccMag.std..           |
| average.tGravityAccMag.mean..       |
| average.tGravityAccMag.std..        |
| average.tBodyAccJerkMag.mean..      |
| average.tBodyAccJerkMag.std..       |
| average.tBodyGyroMag.mean..         |
| average.tBodyGyroMag.std..          |
| average.tBodyGyroJerkMag.mean..     |
| average.tBodyGyroJerkMag.std..      |
| average.fBodyAcc.mean…X             |
| average.fBodyAcc.mean…Y             |
| average.fBodyAcc.mean…Z             |
| average.fBodyAcc.std…X              |
| average.fBodyAcc.std…Y              |
| average.fBodyAcc.std…Z              |
| average.fBodyAccJerk.mean…X         |
| average.fBodyAccJerk.mean…Y         |
| average.fBodyAccJerk.mean…Z         |
| average.fBodyAccJerk.std…X          |
| average.fBodyAccJerk.std…Y          |
| average.fBodyAccJerk.std…Z          |
| average.fBodyGyro.mean…X            |
| average.fBodyGyro.mean…Y            |
| average.fBodyGyro.mean…Z            |
| average.fBodyGyro.std…X             |
| average.fBodyGyro.std…Y             |
| average.fBodyGyro.std…Z             |
| average.fBodyAccMag.mean..          |
| average.fBodyAccMag.std..           |
| average.fBodyBodyAccJerkMag.mean..  |
| average.fBodyBodyAccJerkMag.std..   |
| average.fBodyBodyGyroMag.mean..     |
| average.fBodyBodyGyroMag.std..      |
| average.fBodyBodyGyroJerkMag.mean.. |
| average.fBodyBodyGyroJerkMag.std..  |

</td>

</tr>

</tbody>

</table>

</details>

\[1\] “The dataset has 2 factor(s).”

|      name       | data\_type |                                                                                                         value\_labels                                                                                                         |
| :-------------: | :--------: | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
| activity\_label |   factor   |                                                                 1\. LAYING, 2. SITTING, 3. STANDING, 4. WALKING, 5. WALKING\_DOWNSTAIRS, 6. WALKING\_UPSTAIRS                                                                 |
|   subject\_id   |   factor   | 1\. 1, 2. 2, 3. 3, 4. 4, 5. 5, 6. 6, 7. 7, 8. 8, 9. 9, 10. 10, 11. 11, 12. 12, 13. 13, 14. 14, 15. 15, 16. 16, 17. 17, 18. 18, 19. 19, 20. 20, 21. 21, 22. 22, 23. 23, 24. 24, 25. 25, 26. 26, 27. 27, 28. 28, 29. 29, 30. 30 |

\[1\] “The dataset has 66 numeric(s).”

|                name                 | data\_type |    min    |  median  |   max    |   mean    |    sd    |
| :---------------------------------: | :--------: | :-------: | :------: | :------: | :-------: | :------: |
|       average.tBodyAcc.mean…X       |  numeric   |  0.26570  |  0.2745  |  0.2792  |  0.2743   | 0.003347 |
|       average.tBodyAcc.mean…Y       |  numeric   | \-0.02095 | \-0.0177 | \-0.0148 | \-0.01775 | 0.001301 |
|       average.tBodyAcc.mean…Z       |  numeric   | \-0.11828 | \-0.1087 | \-0.1010 | \-0.1089  | 0.003602 |
|       average.tBodyAcc.std…X        |  numeric   | \-0.71626 | \-0.6054 | \-0.5051 |  \-0.604  | 0.05178  |
|       average.tBodyAcc.std…Y        |  numeric   | \-0.64995 | \-0.5145 | \-0.3494 | \-0.5058  | 0.08429  |
|       average.tBodyAcc.std…Z        |  numeric   | \-0.70949 | \-0.6468 | \-0.2935 | \-0.6105  | 0.09521  |
|     average.tGravityAcc.mean…X      |  numeric   |  0.47532  |  0.6822  |  0.7449  |   0.67    | 0.04978  |
|     average.tGravityAcc.mean…Y      |  numeric   | \-0.14758 |  0.0154  |  0.1155  | 0.003491  | 0.07614  |
|     average.tGravityAcc.mean…Z      |  numeric   | \-0.16118 |  0.0780  |  0.2392  |  0.09084  | 0.08944  |
|      average.tGravityAcc.std…X      |  numeric   | \-0.98014 | \-0.9657 | \-0.9412 | \-0.9649  | 0.008413 |
|      average.tGravityAcc.std…Y      |  numeric   | \-0.97251 | \-0.9568 | \-0.9011 | \-0.9543  |  0.0127  |
|      average.tGravityAcc.std…Z      |  numeric   | \-0.95943 | \-0.9415 | \-0.8807 | \-0.9387  | 0.01585  |
|     average.tBodyAccJerk.mean…X     |  numeric   |  0.07017  |  0.0790  |  0.0842  |   0.079   | 0.003538 |
|     average.tBodyAccJerk.mean…Y     |  numeric   |  0.00048  |  0.0072  |  0.0200  | 0.007852  | 0.004849 |
|     average.tBodyAccJerk.mean…Z     |  numeric   | \-0.01967 | \-0.0040 |  0.0027  | \-0.00476 | 0.004916 |
|     average.tBodyAccJerk.std…X      |  numeric   | \-0.79682 | \-0.6295 | \-0.5247 | \-0.6348  | 0.06715  |
|     average.tBodyAccJerk.std…Y      |  numeric   | \-0.73508 | \-0.6015 | \-0.4544 | \-0.6028  | 0.07923  |
|     average.tBodyAccJerk.std…Z      |  numeric   | \-0.86067 | \-0.7731 | \-0.6030 | \-0.7612  | 0.06017  |
|      average.tBodyGyro.mean…X       |  numeric   | \-0.07013 | \-0.0279 |  0.0036  | \-0.03129 | 0.02013  |
|      average.tBodyGyro.mean…Y       |  numeric   | \-0.09549 | \-0.0767 | \-0.0471 | \-0.07477 | 0.01198  |
|      average.tBodyGyro.mean…Z       |  numeric   |  0.06067  |  0.0877  |  0.1091  |  0.0883   | 0.01095  |
|       average.tBodyGyro.std…X       |  numeric   | \-0.80453 | \-0.7103 | \-0.6378 | \-0.7188  | 0.04589  |
|       average.tBodyGyro.std…Y       |  numeric   | \-0.81012 | \-0.7072 | \-0.3990 | \-0.6799  |  0.108   |
|       average.tBodyGyro.std…Z       |  numeric   | \-0.74741 | \-0.6666 | \-0.3645 | \-0.6503  | 0.08211  |
|    average.tBodyGyroJerk.mean…X     |  numeric   | \-0.10926 | \-0.0969 | \-0.0731 | \-0.09662 | 0.009153 |
|    average.tBodyGyroJerk.mean…Y     |  numeric   | \-0.04939 | \-0.0417 | \-0.0383 | \-0.04239 | 0.002856 |
|    average.tBodyGyroJerk.mean…Z     |  numeric   | \-0.06220 | \-0.0556 | \-0.0451 | \-0.05481 | 0.004048 |
|     average.tBodyGyroJerk.std…X     |  numeric   | \-0.85830 | \-0.7262 | \-0.5460 | \-0.7286  | 0.06549  |
|     average.tBodyGyroJerk.std…Y     |  numeric   | \-0.90263 | \-0.8051 | \-0.5460 | \-0.7841  | 0.08594  |
|     average.tBodyGyroJerk.std…Z     |  numeric   | \-0.83861 | \-0.7489 | \-0.5269 | \-0.7361  | 0.07491  |
|     average.tBodyAccMag.mean..      |  numeric   | \-0.65837 | \-0.5390 | \-0.4533 | \-0.5444  | 0.05501  |
|      average.tBodyAccMag.std..      |  numeric   | \-0.68967 | \-0.5897 | \-0.4741 | \-0.5875  | 0.05638  |
|    average.tGravityAccMag.mean..    |  numeric   | \-0.65837 | \-0.5390 | \-0.4533 | \-0.5444  | 0.05501  |
|    average.tGravityAccMag.std..     |  numeric   | \-0.68967 | \-0.5897 | \-0.4741 | \-0.5875  | 0.05638  |
|   average.tBodyAccJerkMag.mean..    |  numeric   | \-0.78345 | \-0.6401 | \-0.5342 | \-0.6451  | 0.06217  |
|    average.tBodyAccJerkMag.std..    |  numeric   | \-0.78045 | \-0.6096 | \-0.5029 | \-0.6229  | 0.06986  |
|     average.tBodyGyroMag.mean..     |  numeric   | \-0.71817 | \-0.6162 | \-0.4165 | \-0.6019  | 0.07661  |
|     average.tBodyGyroMag.std..      |  numeric   | \-0.78482 | \-0.6747 | \-0.4715 | \-0.6597  | 0.07978  |
|   average.tBodyGyroJerkMag.mean..   |  numeric   | \-0.86045 | \-0.7850 | \-0.6219 | \-0.7597  | 0.06794  |
|   average.tBodyGyroJerkMag.std..    |  numeric   | \-0.88857 | \-0.7963 | \-0.5739 | \-0.7758  | 0.07774  |
|       average.fBodyAcc.mean…X       |  numeric   | \-0.74842 | \-0.6161 | \-0.5062 | \-0.6186  | 0.05746  |
|       average.fBodyAcc.mean…Y       |  numeric   | \-0.67157 | \-0.5286 | \-0.3749 | \-0.5328  | 0.07961  |
|       average.fBodyAcc.mean…Z       |  numeric   | \-0.76123 | \-0.6821 | \-0.4407 | \-0.6627  | 0.07808  |
|       average.fBodyAcc.std…X        |  numeric   | \-0.70522 | \-0.6004 | \-0.4928 | \-0.5997  | 0.05121  |
|       average.fBodyAcc.std…Y        |  numeric   | \-0.66184 | \-0.5317 | \-0.3768 | \-0.5245  | 0.08268  |
|       average.fBodyAcc.std…Z        |  numeric   | \-0.71849 | \-0.6507 | \-0.2750 | \-0.6153  | 0.09876  |
|     average.fBodyAccJerk.mean…X     |  numeric   | \-0.80414 | \-0.6490 | \-0.5472 |  \-0.652  |  0.0652  |
|     average.fBodyAccJerk.mean…Y     |  numeric   | \-0.74863 | \-0.6188 | \-0.4959 | \-0.6242  | 0.07301  |
|     average.fBodyAccJerk.mean…Z     |  numeric   | \-0.84950 | \-0.7539 | \-0.5789 | \-0.7417  | 0.06368  |
|     average.fBodyAccJerk.std…X      |  numeric   | \-0.80771 | \-0.6471 | \-0.5440 | \-0.6501  | 0.06409  |
|     average.fBodyAccJerk.std…Y      |  numeric   | \-0.73920 | \-0.6076 | \-0.4378 | \-0.6071  | 0.08153  |
|     average.fBodyAccJerk.std…Z      |  numeric   | \-0.87054 | \-0.7841 | \-0.6275 | \-0.7795  | 0.05692  |
|      average.fBodyGyro.mean…X       |  numeric   | \-0.78978 | \-0.6628 | \-0.5372 |  \-0.669  | 0.05909  |
|      average.fBodyGyro.mean…Y       |  numeric   | \-0.83153 | \-0.7404 | \-0.4978 | \-0.7036  | 0.09807  |
|      average.fBodyGyro.mean…Z       |  numeric   | \-0.75629 | \-0.6562 | \-0.4239 |  \-0.64   | 0.08181  |
|       average.fBodyGyro.std…X       |  numeric   | \-0.81218 | \-0.7346 | \-0.6661 | \-0.7365  | 0.04332  |
|       average.fBodyGyro.std…Y       |  numeric   | \-0.80942 | \-0.6934 | \-0.3489 | \-0.6714  |  0.1158  |
|       average.fBodyGyro.std…Z       |  numeric   | \-0.77121 | \-0.6980 | \-0.4077 | \-0.6878  |  0.0766  |
|     average.fBodyAccMag.mean..      |  numeric   | \-0.69773 | \-0.5767 | \-0.4740 | \-0.5815  |  0.063   |
|      average.fBodyAccMag.std..      |  numeric   | \-0.73488 | \-0.6601 | \-0.5483 | \-0.6568  | 0.04615  |
| average.fBodyBodyAccJerkMag.mean..  |  numeric   | \-0.77919 | \-0.6082 | \-0.4949 | \-0.6157  | 0.07346  |
|  average.fBodyBodyAccJerkMag.std..  |  numeric   | \-0.78355 | \-0.6278 | \-0.5167 | \-0.6357  | 0.06596  |
|   average.fBodyBodyGyroMag.mean..   |  numeric   | \-0.81713 | \-0.7171 | \-0.5347 | \-0.6946  | 0.07978  |
|   average.fBodyBodyGyroMag.std..    |  numeric   | \-0.80208 | \-0.6987 | \-0.5169 | \-0.6976  | 0.06894  |
| average.fBodyBodyGyroJerkMag.mean.. |  numeric   | \-0.88466 | \-0.8010 | \-0.5841 | \-0.7775  | 0.07643  |
| average.fBodyBodyGyroJerkMag.std..  |  numeric   | \-0.90221 | \-0.8057 | \-0.5937 | \-0.7902  | 0.07434  |
