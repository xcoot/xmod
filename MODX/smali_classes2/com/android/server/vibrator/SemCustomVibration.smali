.class public final Lcom/android/server/vibrator/SemCustomVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

.field public final mSettings:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/SemCustomVibration;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getCustomAmplitudeData(ILjava/lang/String;)[I
    .locals 5

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    aget-object p2, p2, v0

    .line 9
    .line 10
    const-string v0, " "

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 24
    .line 25
    int-to-double v1, p0

    .line 26
    int-to-double p0, p1

    .line 27
    div-double/2addr v1, p0

    .line 28
    const/4 p0, 0x0

    .line 29
    :goto_0
    :try_start_0
    array-length p1, p2

    .line 30
    if-ge p0, p1, :cond_0

    .line 31
    .line 32
    aget-object p1, p2, p0

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-double v3, p1

    .line 39
    div-double/2addr v3, v1

    .line 40
    double-to-int p1, v3

    .line 41
    aput p1, v0, p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    add-int/lit8 p0, p0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-object v2, p0, Lcom/android/server/vibrator/SemCustomVibration;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/os/vibrator/SemHapticSegment;->getCategoryPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const-string/jumbo v9, "vibration_pattern=?"

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v2}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget v6, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    const-string v7, "custom_data"

    .line 61
    .line 62
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-ltz v7, :cond_4

    .line 67
    .line 68
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    if-nez v7, :cond_1

    .line 73
    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    return-object v3

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :catch_0
    move-exception v2

    .line 88
    goto :goto_5

    .line 89
    :catchall_1
    move-exception v6

    .line 90
    goto :goto_3

    .line 91
    :cond_1
    :try_start_3
    const-string v8, "#"

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const/4 v9, 0x0

    .line 98
    aget-object v8, v8, v9

    .line 99
    .line 100
    const-string v10, " "

    .line 101
    .line 102
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    array-length v10, v8

    .line 107
    new-array v10, v10, [J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    .line 109
    :goto_0
    :try_start_4
    array-length v11, v8

    .line 110
    if-ge v9, v11, :cond_2

    .line 111
    .line 112
    aget-object v11, v8, v9

    .line 113
    .line 114
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v11

    .line 118
    aput-wide v11, v10, v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_1
    move-exception v8

    .line 124
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p0, v0, v7}, Lcom/android/server/vibrator/SemCustomVibration;->getCustomAmplitudeData(ILjava/lang/String;)[I

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static {v10, v7, v6}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    iget-object v7, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 137
    .line 138
    invoke-virtual {v7}, Landroid/os/vibrator/SemHapticSegment;->getDefaultSepIndex()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-static {v7, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    .line 143
    .line 144
    .line 145
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 147
    .line 148
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :goto_3
    if-eqz v2, :cond_6

    .line 156
    .line 157
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :catchall_2
    move-exception v2

    .line 162
    :try_start_8
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_4
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 166
    :goto_5
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_6
    if-eqz v3, :cond_7

    .line 171
    .line 172
    invoke-virtual {v3, v0}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    .line 173
    .line 174
    .line 175
    :cond_7
    invoke-static {v3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    new-instance v0, Lcom/android/server/vibrator/HalVibration;

    .line 180
    .line 181
    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    iget v9, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    .line 193
    .line 194
    const/4 v10, 0x0

    .line 195
    const/4 v11, 0x0

    .line 196
    const-wide/16 v7, -0x1

    .line 197
    .line 198
    move-object v4, v0

    .line 199
    invoke-direct/range {v4 .. v12}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SemCustomVibration : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
