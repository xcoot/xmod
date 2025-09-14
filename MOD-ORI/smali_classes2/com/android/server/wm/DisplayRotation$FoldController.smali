.class public final Lcom/android/server/wm/DisplayRotation$FoldController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityBoundsUpdateCallback:Lcom/android/server/wm/DisplayRotation$FoldController$1;

.field public final mAllowHalfFoldAutoRotationOverride:Z

.field public mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public final mDisplaySwitchRotationBlockTimeMs:I

.field public mHalfFoldSavedRotation:I

.field public final mHingeAngleRotationBlockTimeMs:I

.field public final mHingeAngleSensorEventListener:Lcom/android/server/wm/DisplayRotation$FoldController$2;

.field public mInHalfFoldTransition:Z

.field public final mIsDisplayAlwaysSeparatingHinge:Z

.field public mLastDisplaySwitchTime:J

.field public mLastHingeAngleEventTime:J

.field public final mMaxHingeAngle:I

.field public final mPauseAutorotationDuringUnfolding:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldDisableRotationSensor:Z

.field public mShouldIgnoreSensorRotation:Z

.field public final mTabletopRotations:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x1110297

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    .line 36
    .line 37
    new-instance v1, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 43
    .line 44
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x10700cf

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 58
    .line 59
    const/4 v3, 0x3

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    array-length v4, v1

    .line 63
    move v5, v0

    .line 64
    :goto_0
    if-ge v5, v4, :cond_6

    .line 65
    .line 66
    aget v6, v1, v5

    .line 67
    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    const/16 v7, 0x5a

    .line 71
    .line 72
    if-eq v6, v7, :cond_2

    .line 73
    .line 74
    const/16 v7, 0xb4

    .line 75
    .line 76
    if-eq v6, v7, :cond_1

    .line 77
    .line 78
    const/16 v7, 0x10e

    .line 79
    .line 80
    if-eq v6, v7, :cond_0

    .line 81
    .line 82
    const/4 v7, 0x4

    .line 83
    aget-boolean v7, v2, v7

    .line 84
    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    int-to-long v6, v6

    .line 88
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 89
    .line 90
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    const/4 v11, 0x1

    .line 99
    const/4 v12, 0x0

    .line 100
    const-wide v9, 0x49e6af899df831b2L    # 1.0360993240422253E48

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v6, Landroid/util/ArraySet;

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 122
    .line 123
    const/4 v7, 0x2

    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v6, Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v6, Landroid/util/ArraySet;

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v6, Landroid/util/ArraySet;

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    aget-boolean v1, v2, v3

    .line 162
    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 166
    .line 167
    const-wide v3, 0x4011086c30af3a2fL    # 4.258225212759995

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    const/4 v6, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const v2, 0x11101bd

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    .line 192
    .line 193
    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$1;

    .line 194
    .line 195
    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$1;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    .line 196
    .line 197
    .line 198
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Lcom/android/server/wm/DisplayRotation$FoldController$1;

    .line 199
    .line 200
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const v2, 0x1110298

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    .line 214
    .line 215
    if-eqz v1, :cond_7

    .line 216
    .line 217
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const v2, 0x10e010e

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    iput v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    .line 231
    .line 232
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const v2, 0x10e010f

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iput v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    .line 246
    .line 247
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    const v1, 0x10e0110

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    iput p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 263
    .line 264
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 265
    .line 266
    const-class v2, Landroid/hardware/SensorManager;

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Landroid/hardware/SensorManager;

    .line 273
    .line 274
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 275
    .line 276
    if-eqz v1, :cond_7

    .line 277
    .line 278
    const/16 v2, 0x24

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-eqz v1, :cond_7

    .line 285
    .line 286
    new-instance v2, Lcom/android/server/wm/DisplayRotation$FoldController$2;

    .line 287
    .line 288
    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$2;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    .line 289
    .line 290
    .line 291
    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Lcom/android/server/wm/DisplayRotation$FoldController$2;

    .line 292
    .line 293
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p0, v2, v1, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 300
    .line 301
    .line 302
    :cond_7
    return-void
.end method


# virtual methods
.method public final foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aget-boolean v2, v2, v3

    .line 9
    .line 10
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v4, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 17
    .line 18
    int-to-long v5, v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    iget v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 28
    .line 29
    int-to-long v9, v2

    .line 30
    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 31
    .line 32
    int-to-long v11, v2

    .line 33
    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 34
    .line 35
    int-to-long v13, v2

    .line 36
    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 37
    .line 38
    int-to-long v2, v2

    .line 39
    iget v7, v4, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 40
    .line 41
    int-to-long v0, v7

    .line 42
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 43
    .line 44
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v20

    .line 72
    const/16 v18, 0x1551

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    const-wide v16, 0x7ad9da1852873806L    # 6.006603503852751E283

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    move-object/from16 v0, p0

    .line 85
    .line 86
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 87
    .line 88
    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 89
    .line 90
    if-ne v1, v2, :cond_1

    .line 91
    .line 92
    move-object/from16 v2, p1

    .line 93
    .line 94
    iput-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_1
    move-object/from16 v2, p1

    .line 98
    .line 99
    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    if-ne v2, v3, :cond_2

    .line 103
    .line 104
    if-eq v1, v3, :cond_2

    .line 105
    .line 106
    iget-object v1, v4, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    .line 112
    .line 113
    .line 114
    iget v1, v4, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 115
    .line 116
    iput v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 117
    .line 118
    iput-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 119
    .line 120
    iget-object v1, v4, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 121
    .line 122
    invoke-virtual {v1, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 128
    .line 129
    iput-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 130
    .line 131
    iget-object v1, v4, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 132
    .line 133
    invoke-virtual {v1, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Lcom/android/server/wm/DisplayRotation$FoldController$1;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-wide/16 v2, 0x320

    .line 150
    .line 151
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final updateSensorRotationBlockIfNeeded()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    .line 8
    .line 9
    sub-long v3, v1, v3

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    .line 12
    .line 13
    int-to-long v5, v5

    .line 14
    cmp-long v3, v3, v5

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-ltz v3, :cond_1

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    .line 20
    .line 21
    sub-long/2addr v1, v5

    .line 22
    iget v3, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    .line 23
    .line 24
    int-to-long v5, v3

    .line 25
    cmp-long v1, v1, v5

    .line 26
    .line 27
    if-gez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 33
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    .line 34
    .line 35
    if-eq v1, v2, :cond_3

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_2
    return-void
.end method
