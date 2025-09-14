.class public final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mDevices:Landroid/util/LongSparseArray;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mEvenDimmerStrength:I

.field public final mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

.field public final mIsBootDisplayModeSupported:Z

.field public mOverlayContext:Landroid/content/Context;

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V
    .locals 7

    .line 1
    const-string v5, "LocalDisplayAdapter"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/util/LongSparseArray;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    .line 21
    .line 22
    iput-object p6, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 23
    .line 24
    iput-object p7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 25
    .line 26
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 35
    .line 36
    const-wide/16 p1, 0x20

    .line 37
    .line 38
    const-string/jumbo p3, "getBootDisplayModeSupport"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getBootDisplayModeSupport()Z

    .line 45
    .line 46
    .line 47
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    .line 49
    .line 50
    .line 51
    iput-boolean p3, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method


# virtual methods
.method public final registerLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    .line 18
    .line 19
    invoke-direct {v3, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;-><init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v3, v2, Lcom/android/server/display/LocalDisplayAdapter$Injector;->mReceiver:Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v1, :cond_0

    .line 36
    .line 37
    aget-wide v3, v0, v2

    .line 38
    .line 39
    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public final tryConnectDisplayLocked(J)V
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-wide/from16 v10, p1

    .line 4
    .line 5
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p2}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_e

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v1, "LocalDisplayAdapter"

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "No valid static info found for display device "

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-nez v6, :cond_1

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "No valid dynamic info found for display device "

    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    iget-object v3, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "No valid modes found for display device "

    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    iget v3, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    .line 95
    .line 96
    if-gez v3, :cond_3

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "No valid active mode found for display device "

    .line 101
    .line 102
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    iget v3, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 117
    .line 118
    if-gez v3, :cond_4

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, "No valid active color mode for display device "

    .line 123
    .line 124
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    const/4 v3, -0x1

    .line 138
    iput v3, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 139
    .line 140
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    if-nez v7, :cond_5

    .line 148
    .line 149
    const-string v0, "Desired display mode specs from SurfaceFlinger are null"

    .line 150
    .line 151
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 156
    .line 157
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 162
    .line 163
    if-nez v0, :cond_d

    .line 164
    .line 165
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const/4 v1, 0x0

    .line 172
    if-nez v0, :cond_6

    .line 173
    .line 174
    const/4 v8, 0x1

    .line 175
    goto :goto_0

    .line 176
    :cond_6
    move v8, v1

    .line 177
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    .line 178
    .line 179
    if-eqz v0, :cond_c

    .line 180
    .line 181
    iget-boolean v0, v5, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 182
    .line 183
    if-eqz v0, :cond_c

    .line 184
    .line 185
    iget-object v0, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 186
    .line 187
    array-length v3, v0

    .line 188
    const/4 v4, 0x0

    .line 189
    move v13, v1

    .line 190
    move v14, v13

    .line 191
    move v15, v4

    .line 192
    move v4, v14

    .line 193
    :goto_1
    if-ge v1, v3, :cond_b

    .line 194
    .line 195
    aget-object v12, v0, v1

    .line 196
    .line 197
    move/from16 v16, v3

    .line 198
    .line 199
    iget v3, v12, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 200
    .line 201
    iget v10, v12, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 202
    .line 203
    mul-int v11, v3, v10

    .line 204
    .line 205
    move/from16 v17, v3

    .line 206
    .line 207
    mul-int v3, v13, v14

    .line 208
    .line 209
    if-ge v11, v3, :cond_7

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    move/from16 v18, v10

    .line 213
    .line 214
    iget v10, v12, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 215
    .line 216
    const v19, 0x426ff5c3    # 59.99f

    .line 217
    .line 218
    .line 219
    cmpg-float v19, v10, v19

    .line 220
    .line 221
    if-gez v19, :cond_8

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    if-gt v11, v3, :cond_9

    .line 225
    .line 226
    cmpg-float v3, v10, v15

    .line 227
    .line 228
    if-gez v3, :cond_a

    .line 229
    .line 230
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-interface {v3, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    move v4, v3

    .line 239
    move v15, v10

    .line 240
    move/from16 v13, v17

    .line 241
    .line 242
    move/from16 v14, v18

    .line 243
    .line 244
    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 245
    .line 246
    move-wide/from16 v10, p1

    .line 247
    .line 248
    move/from16 v3, v16

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_b
    iput v4, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    .line 252
    .line 253
    :cond_c
    new-instance v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 254
    .line 255
    move-object v0, v10

    .line 256
    move-object/from16 v1, p0

    .line 257
    .line 258
    move-wide/from16 v3, p1

    .line 259
    .line 260
    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 264
    .line 265
    move-wide/from16 v1, p1

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    const/4 v0, 0x1

    .line 271
    invoke-virtual {v9, v10, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_d
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_e

    .line 280
    .line 281
    const/4 v1, 0x2

    .line 282
    invoke-virtual {v9, v0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 283
    .line 284
    .line 285
    :cond_e
    :goto_3
    return-void
.end method
