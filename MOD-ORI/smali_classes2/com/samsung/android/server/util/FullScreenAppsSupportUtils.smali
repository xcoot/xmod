.class public final Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCached:Z

.field public mCachedFullScreenAppsSupportMode:I

.field public final mDefaultFullScreenList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mDefaultFullScreenListForHID:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 14
    .line 15
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN_HID:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenListForHID:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getFullScreenAppsSupportMode()I
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "display"

    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "FullScreenAppsSupportUtils"

    .line 33
    .line 34
    const-string v1, "DisplayManager is null."

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :catchall_1
    move-exception v0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    const-string v0, "FullScreenAppsSupportUtils"

    .line 62
    .line 63
    const-string v1, "DisplayManagerInternal is null."

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 74
    .line 75
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    new-instance v2, Landroid/view/DisplayInfo;

    .line 77
    .line 78
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    :try_start_2
    invoke-interface {v0, v3}, Landroid/hardware/display/IDisplayManager;->getDisplayIds(Z)[I

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    array-length v4, v0

    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    move v7, v6

    .line 90
    move v8, v7

    .line 91
    move v6, v5

    .line 92
    :goto_0
    if-ge v7, v4, :cond_8

    .line 93
    .line 94
    aget v9, v0, v7

    .line 95
    .line 96
    invoke-virtual {v1, v9, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 97
    .line 98
    .line 99
    iget v9, v2, Landroid/view/DisplayInfo;->type:I

    .line 100
    .line 101
    if-eq v9, v3, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 105
    .line 106
    iget v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 107
    .line 108
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    int-to-float v11, v11

    .line 113
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    int-to-float v12, v12

    .line 118
    div-float/2addr v11, v12

    .line 119
    cmpg-float v12, v5, v11

    .line 120
    .line 121
    if-gez v12, :cond_4

    .line 122
    .line 123
    move v5, v11

    .line 124
    :cond_4
    iget-object v12, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 125
    .line 126
    if-eqz v12, :cond_5

    .line 127
    .line 128
    invoke-virtual {v12}, Landroid/view/DisplayCutout;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-nez v12, :cond_5

    .line 133
    .line 134
    or-int/lit8 v8, v8, 0x2

    .line 135
    .line 136
    iget-object v11, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 137
    .line 138
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    iget-object v12, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 143
    .line 144
    invoke-virtual {v12}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    add-int/2addr v12, v11

    .line 149
    sub-int/2addr v9, v12

    .line 150
    iget-object v11, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 151
    .line 152
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    iget-object v12, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 157
    .line 158
    invoke-virtual {v12}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    add-int/2addr v12, v11

    .line 163
    sub-int/2addr v10, v12

    .line 164
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    int-to-float v11, v11

    .line 169
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    int-to-float v9, v9

    .line 174
    div-float/2addr v11, v9

    .line 175
    :cond_5
    const v9, 0x3fee147b    # 1.86f

    .line 176
    .line 177
    .line 178
    cmpl-float v9, v11, v9

    .line 179
    .line 180
    if-lez v9, :cond_6

    .line 181
    .line 182
    or-int/lit8 v8, v8, 0x1

    .line 183
    .line 184
    :cond_6
    cmpg-float v9, v6, v11

    .line 185
    .line 186
    if-gez v9, :cond_7

    .line 187
    .line 188
    move v6, v11

    .line 189
    :cond_7
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_8
    monitor-enter p0

    .line 193
    :try_start_3
    iput v8, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    .line 194
    .line 195
    iput-boolean v3, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    .line 196
    .line 197
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    const-string v0, "FullScreenAppsSupportUtils"

    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "FullScreenAppsSupportMode=0x"

    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, ", DisplayMaxAspectRatio"

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, ", DisplayMaxAspectRatioWithCutout"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catchall_2
    move-exception v0

    .line 239
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    throw v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    :goto_2
    monitor-enter p0

    .line 246
    :try_start_5
    iget v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    .line 247
    .line 248
    monitor-exit p0

    .line 249
    return v0

    .line 250
    :catchall_3
    move-exception v0

    .line 251
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 252
    throw v0

    .line 253
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 254
    throw v0

    .line 255
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 256
    throw v0
.end method
