.class public final Lcom/samsung/android/server/vibrator/VibratorHqmData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlarmCount:I

.field public mExtraCount:I

.field public mLoggingData:Ljava/util/HashMap;

.field public mNotificationCount:I

.field public mRingCount:I

.field public mTouchCount:I


# virtual methods
.method public final increaseCount(I)V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq p1, v0, :cond_7

    .line 7
    .line 8
    const/16 v0, 0x12

    .line 9
    .line 10
    if-eq p1, v0, :cond_5

    .line 11
    .line 12
    const/16 v0, 0x21

    .line 13
    .line 14
    if-eq p1, v0, :cond_3

    .line 15
    .line 16
    const/16 v0, 0x31

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 25
    .line 26
    if-lt p1, v1, :cond_0

    .line 27
    .line 28
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 31
    .line 32
    iget p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "FW_EVPC"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 45
    .line 46
    if-lt p1, v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 50
    .line 51
    :goto_0
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "FW_NVPC"

    .line 60
    .line 61
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_3
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 66
    .line 67
    if-lt p1, v1, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    add-int/lit8 v1, p1, 0x1

    .line 71
    .line 72
    :goto_1
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "FW_RVPC"

    .line 81
    .line 82
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 87
    .line 88
    if-lt p1, v1, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    add-int/lit8 v1, p1, 0x1

    .line 92
    .line 93
    :goto_2
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v0, "FW_TVPC"

    .line 102
    .line 103
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 108
    .line 109
    if-lt p1, v1, :cond_8

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_8
    add-int/lit8 v1, p1, 0x1

    .line 113
    .line 114
    :goto_3
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "FW_AVPC"

    .line 123
    .line 124
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :goto_4
    return-void
.end method
