.class public final Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public final mDisplayRotationCompatPolicySummary:Ljava/lang/String;

.field public final mFromRotation:I

.field public final mHalfFoldSavedRotation:I

.field public final mIgnoreOrientationRequest:Z

.field public final mInHalfFoldTransition:Z

.field public final mLastOrientationSource:Ljava/lang/String;

.field public final mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

.field public final mRotationReversionSlots:[Z

.field public final mSensorRotation:I

.field public final mSourceOrientation:I

.field public final mTimestamp:J

.field public final mToRotation:I

.field public final mUserRotation:I

.field public final mUserRotationMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    .line 11
    .line 12
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    .line 13
    .line 14
    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 15
    .line 16
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    .line 17
    .line 18
    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 19
    .line 20
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    .line 21
    .line 22
    iget-object p2, p1, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 23
    .line 24
    const/4 p3, -0x2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-boolean p2, p2, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move p2, p3

    .line 36
    :goto_1
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    .line 37
    .line 38
    iget-object p2, p1, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    .line 45
    .line 46
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string/jumbo v0, "none"

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eq v0, v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object v0, v1

    .line 67
    :goto_2
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 88
    .line 89
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    :goto_3
    iput v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    .line 100
    .line 101
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    .line 102
    .line 103
    :goto_4
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    iget p3, p1, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    .line 108
    .line 109
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    .line 110
    .line 111
    iget-boolean p3, p1, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    .line 112
    .line 113
    iput-boolean p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 116
    .line 117
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    .line 124
    .line 125
    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 128
    .line 129
    :goto_5
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 132
    .line 133
    if-eqz p1, :cond_9

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    const-string v0, " }"

    .line 140
    .line 141
    if-eqz p3, :cond_8

    .line 142
    .line 143
    iget-object p3, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 144
    .line 145
    const/4 v2, 0x1

    .line 146
    invoke-virtual {p3, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v4, " mLastReportedOrientation="

    .line 153
    .line 154
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget v4, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    .line 158
    .line 159
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v4, " topActivity="

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    if-nez p3, :cond_7

    .line 172
    .line 173
    const-string/jumbo v4, "null"

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_7
    iget-object v4, p3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 178
    .line 179
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v4, " isTreatmentEnabledForActivity="

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v2, p3}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p3, "mCameraStateMonitor="

    .line 195
    .line 196
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v2, " CameraIdPackageNameBiMapping="

    .line 202
    .line 203
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string/jumbo v4, "{ mPackageToCameraIdMap="

    .line 209
    .line 210
    .line 211
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v4, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 215
    .line 216
    iget-object v4, v4, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 217
    .line 218
    iget-object v4, v4, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 219
    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    goto :goto_7

    .line 245
    :cond_8
    const-string p3, ""

    .line 246
    .line 247
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v3, "DisplayRotationCompatPolicy{ isTreatmentEnabledForDisplay="

    .line 250
    .line 251
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    goto :goto_8

    .line 272
    :cond_9
    move-object p1, v1

    .line 273
    :goto_8
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDisplayRotationCompatPolicySummary:Ljava/lang/String;

    .line 274
    .line 275
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    .line 276
    .line 277
    iget-object p2, p1, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 278
    .line 279
    iget-object p3, p2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 280
    .line 281
    iget-object p3, p3, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 282
    .line 283
    if-eqz p3, :cond_a

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_a
    iget-object p3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 287
    .line 288
    iget-object p3, p3, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 289
    .line 290
    if-nez p3, :cond_b

    .line 291
    .line 292
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-eqz p2, :cond_c

    .line 297
    .line 298
    :cond_b
    :goto_9
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 299
    .line 300
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    move-object v1, p1

    .line 305
    check-cast v1, [Z

    .line 306
    .line 307
    :cond_c
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mRotationReversionSlots:[Z

    .line 308
    .line 309
    return-void
.end method
