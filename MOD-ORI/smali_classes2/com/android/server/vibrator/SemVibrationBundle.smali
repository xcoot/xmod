.class public final Lcom/android/server/vibrator/SemVibrationBundle;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAttrs:Landroid/os/VibrationAttributes;

.field public mDeviceId:I

.field public mEffect:Landroid/os/CombinedVibration;

.field public mIndex:I

.field public mMagnitude:I

.field public mOpPkg:Ljava/lang/String;

.field public mReason:Ljava/lang/String;

.field public mRepeat:I

.field public mToken:Landroid/os/IBinder;

.field public mUid:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/vibrator/SemVibrationBundle;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    check-cast p1, Lcom/android/server/vibrator/SemVibrationBundle;

    .line 25
    .line 26
    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    .line 27
    .line 28
    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    .line 33
    .line 34
    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    .line 39
    .line 40
    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    .line 41
    .line 42
    if-ne v2, v3, :cond_3

    .line 43
    .line 44
    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    .line 45
    .line 46
    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    .line 47
    .line 48
    if-ne v2, v3, :cond_3

    .line 49
    .line 50
    iget v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 51
    .line 52
    iget v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 53
    .line 54
    if-ne v2, v3, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 59
    .line 60
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 69
    .line 70
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 99
    .line 100
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 109
    :cond_4
    :goto_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SemVibrationBundle{mToken="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mAttrs="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mUid="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mDeviceId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mOpPkg=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', mReason=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', mEffect="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mIndex="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mRepeat="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", mMagnitude="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 99
    .line 100
    const/16 v1, 0x7d

    .line 101
    .line 102
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
