.class public final Lcom/android/server/vibrator/SemDcVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v0, Lcom/android/server/vibrator/HalVibration;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 26
    .line 27
    iget v4, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    iget v6, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const-wide/16 v4, -0x1

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "semDcVibrate : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
