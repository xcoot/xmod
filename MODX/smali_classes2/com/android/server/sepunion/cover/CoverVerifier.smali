.class public final Lcom/android/server/sepunion/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultClearCoverHeight:I

.field public mDefaultClearCoverWidth:I

.field public mIsCoverAttached:Z

.field public mIsCoverVerified:Z


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, " Current CoverVerifier state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "  mIsCoverVerified="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 14
    .line 15
    .line 16
    const-string v0, "  mIsCoverAttached="

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "  mDefaultCoverType="

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 36
    .line 37
    .line 38
    const-string p0, "  mDefaultCoverColor="

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 45
    .line 46
    .line 47
    const-string v0, "  mDefaultSViewCoverWidth="

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 53
    .line 54
    .line 55
    const-string v0, "  mDefaultSViewCoverHeight="

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 61
    .line 62
    .line 63
    const-string v0, "  mDefaultMiniSViewCoverWidth="

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 69
    .line 70
    .line 71
    const-string v0, "  mDefaultMiniSViewCoverHeight="

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 77
    .line 78
    .line 79
    const-string p0, "  "

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final getDefaultTypeOfCover()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/16 v2, 0xb

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 30
    .line 31
    const/4 v5, -0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    move v0, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 41
    .line 42
    :goto_0
    if-nez v0, :cond_1

    .line 43
    .line 44
    return v4

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    move v0, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 65
    .line 66
    :goto_1
    if-ne v0, v3, :cond_3

    .line 67
    .line 68
    return v3

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 79
    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    sget-boolean p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget v5, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 88
    .line 89
    :goto_2
    if-ne v5, v2, :cond_5

    .line 90
    .line 91
    return v2

    .line 92
    :cond_5
    return v1

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    const-string/jumbo v5, "tablet"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 125
    .line 126
    if-eqz p0, :cond_a

    .line 127
    .line 128
    return v4

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    return v4

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    return v3

    .line 157
    :cond_9
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 167
    .line 168
    if-eqz p0, :cond_a

    .line 169
    .line 170
    return v2

    .line 171
    :cond_a
    return v1
.end method

.method public final getScreenSizeForClearCover()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "window"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/WindowManager;

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/graphics/Point;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_0

    .line 38
    .line 39
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 40
    .line 41
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 42
    .line 43
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 44
    .line 45
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 49
    .line 50
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 51
    .line 52
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 53
    .line 54
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 60
    .line 61
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public final getSupportSViewCoverHeight(I)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 12
    .line 13
    :goto_0
    return p0
.end method

.method public final getSupportSViewCoverWidth(I)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 12
    .line 13
    :goto_0
    return p0
.end method

.method public final updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 11
    .line 12
    const-string v1, "factory"

    .line 13
    .line 14
    const-string/jumbo v2, "ro.factory.factory_binary"

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    if-nez p2, :cond_4

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    sget-boolean p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const/4 p2, -0x1

    .line 32
    :goto_0
    move v4, p2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    sget p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    iget-boolean v8, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    move-object v3, p1

    .line 60
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lcom/samsung/android/cover/CoverState;->setVisibleRect(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    const-string p0, "CoverManager_CoverVerifier"

    .line 75
    .line 76
    const-string p1, "[SmartCover] CoverVerify : sview cover test mode enabled"

    .line 77
    .line 78
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void

    .line 82
    :cond_4
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 93
    .line 94
    .line 95
    iget p2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 96
    .line 97
    const/16 v0, 0x8

    .line 98
    .line 99
    if-ne p2, v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    .line 102
    .line 103
    .line 104
    :cond_5
    const/16 v0, 0xff

    .line 105
    .line 106
    if-eq p2, v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-virtual {p1, p0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    const/4 v0, 0x0

    .line 128
    if-nez p2, :cond_7

    .line 129
    .line 130
    iget-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 131
    .line 132
    if-eqz p2, :cond_7

    .line 133
    .line 134
    const-string p2, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-static {v3, p2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    const-string v3, "/sys/devices/w1_bus_master1/w1_master_check_color"

    .line 145
    .line 146
    invoke-static {v0, v3}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    const-string v4, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    .line 151
    .line 152
    invoke-static {v0, v4}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    move v4, p2

    .line 157
    move v9, v0

    .line 158
    move v5, v3

    .line 159
    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    move v4, p2

    .line 165
    move v5, v0

    .line 166
    move v9, v5

    .line 167
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-nez p2, :cond_8

    .line 184
    .line 185
    iget-boolean v8, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 186
    .line 187
    move-object v3, p1

    .line 188
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 189
    .line 190
    .line 191
    :cond_8
    :goto_3
    return-void
.end method

.method public final updateCoverVerification()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 17
    .line 18
    if-nez v0, :cond_4

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    invoke-static {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v0, v2

    .line 61
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 62
    .line 63
    if-eq v3, v0, :cond_4

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v1, v2

    .line 76
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 77
    .line 78
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v2, "updateCoverVerification : mIsCoverVerified ="

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, ", change="

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string v0, "CoverManager_CoverVerifier"

    .line 106
    .line 107
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return v1
.end method

.method public final updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    .line 1
    const-string v0, "CoverManager_CoverVerifier"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "updateCoverWindowSize(): CoverState is null"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v3, "updateCoverWindowSize(): old window = "

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v3, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v3, "x"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 48
    .line 49
    const-string v5, " new window = "

    .line 50
    .line 51
    invoke-static {v4, v1, v5, v3, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
