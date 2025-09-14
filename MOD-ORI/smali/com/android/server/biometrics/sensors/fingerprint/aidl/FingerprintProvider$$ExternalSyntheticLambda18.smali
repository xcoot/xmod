.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

.field public final synthetic f$10:Landroid/os/Bundle;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZIIZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 13
    .line 14
    iput-wide p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$5:J

    .line 15
    .line 16
    iput-boolean p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$6:Z

    .line 17
    .line 18
    iput p10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$7:I

    .line 19
    .line 20
    iput p11, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$8:I

    .line 21
    .line 22
    iput-boolean p12, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$9:Z

    .line 23
    .line 24
    iput-object p13, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$10:Landroid/os/Bundle;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 6
    .line 7
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$2:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$3:J

    .line 10
    .line 11
    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 12
    .line 13
    iget-wide v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$5:J

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$6:Z

    .line 16
    .line 17
    iget v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$7:I

    .line 18
    .line 19
    iget v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$8:I

    .line 20
    .line 21
    iget-boolean v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$9:Z

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;->f$10:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    .line 29
    .line 30
    .line 31
    move-result v32

    .line 32
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-static {v12}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 37
    .line 38
    .line 39
    move-result v21

    .line 40
    iget-object v8, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 41
    .line 42
    iget-object v8, v8, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 49
    .line 50
    const/4 v9, 0x1

    .line 51
    invoke-virtual {v8, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 52
    .line 53
    .line 54
    move-result-object v27

    .line 55
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 56
    .line 57
    iget-object v9, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    move/from16 v16, v11

    .line 60
    .line 61
    iget-object v11, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 62
    .line 63
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 70
    .line 71
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 72
    .line 73
    move-object/from16 v28, v0

    .line 74
    .line 75
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 76
    .line 77
    move/from16 v18, v3

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    invoke-virtual {v6, v3, v7, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger$1(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    .line 81
    .line 82
    .line 83
    move-result-object v19

    .line 84
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 85
    .line 86
    iget-object v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    .line 87
    .line 88
    iget-object v3, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 89
    .line 90
    move-object/from16 v17, v7

    .line 91
    .line 92
    iget-object v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 93
    .line 94
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 101
    .line 102
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 103
    .line 104
    invoke-static {v12}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 105
    .line 106
    .line 107
    move-result v26

    .line 108
    move-object/from16 v20, v7

    .line 109
    .line 110
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda36;

    .line 111
    .line 112
    move-object/from16 v29, v7

    .line 113
    .line 114
    invoke-direct {v7, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v23, v0

    .line 118
    .line 119
    move-object/from16 v22, v1

    .line 120
    .line 121
    iget-wide v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mPowerSinglePressedTimeStamp:J

    .line 122
    .line 123
    move-wide/from16 v30, v0

    .line 124
    .line 125
    move-object/from16 v0, v17

    .line 126
    .line 127
    move-object/from16 v1, v20

    .line 128
    .line 129
    move-object v7, v8

    .line 130
    move-object/from16 v33, v6

    .line 131
    .line 132
    move-object v6, v8

    .line 133
    move-object v8, v9

    .line 134
    move-object v9, v11

    .line 135
    move/from16 p0, v12

    .line 136
    .line 137
    move/from16 v24, v16

    .line 138
    .line 139
    move-wide v11, v4

    .line 140
    move/from16 v16, v2

    .line 141
    .line 142
    move-object/from16 v17, v22

    .line 143
    .line 144
    move-object/from16 v20, v23

    .line 145
    .line 146
    move-object/from16 v22, v0

    .line 147
    .line 148
    move-object/from16 v23, v3

    .line 149
    .line 150
    move-object/from16 v25, v1

    .line 151
    .line 152
    invoke-direct/range {v7 .. v31}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/fingerprint/FingerprintAuthenticateOptions;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILcom/android/server/biometrics/sensors/LockoutTracker;Landroid/os/Bundle;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda36;J)V

    .line 153
    .line 154
    .line 155
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    .line 164
    iget v1, v6, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 165
    .line 166
    invoke-virtual {v6, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iput-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 171
    .line 172
    :cond_0
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 173
    .line 174
    if-eqz v1, :cond_1

    .line 175
    .line 176
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 177
    .line 178
    or-int/lit8 v1, v1, 0x1b

    .line 179
    .line 180
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_1
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSettingApp:Z

    .line 184
    .line 185
    if-eqz v1, :cond_2

    .line 186
    .line 187
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 188
    .line 189
    const/4 v2, 0x2

    .line 190
    or-int/2addr v1, v2

    .line 191
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 192
    .line 193
    :cond_2
    :goto_0
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 194
    .line 195
    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 196
    .line 197
    const-string/jumbo v3, "sem_privileged_attr"

    .line 198
    .line 199
    .line 200
    const/4 v9, 0x0

    .line 201
    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    or-int/2addr v1, v2

    .line 206
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 207
    .line 208
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 209
    .line 210
    const/4 v2, 0x4

    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    iput v1, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    .line 218
    .line 219
    and-int/lit8 v7, v1, 0x1

    .line 220
    .line 221
    if-eqz v7, :cond_3

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_3
    and-int/2addr v1, v2

    .line 225
    if-eqz v1, :cond_4

    .line 226
    .line 227
    :goto_1
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 228
    .line 229
    or-int/2addr v1, v0

    .line 230
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 231
    .line 232
    :cond_4
    invoke-virtual {v6, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_5

    .line 237
    .line 238
    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCanIgnoreLockout:Z

    .line 239
    .line 240
    :cond_5
    const/16 v1, 0x8

    .line 241
    .line 242
    invoke-virtual {v6, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    iput-boolean v9, v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 249
    .line 250
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_7

    .line 255
    .line 256
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 257
    .line 258
    or-int/2addr v1, v2

    .line 259
    iput v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 260
    .line 261
    :cond_7
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 262
    .line 263
    if-eqz v1, :cond_8

    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_8
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 270
    .line 271
    const-string v7, "EXTRA_KEY_DISPLAY_ID"

    .line 272
    .line 273
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v7, "FingerprintClientExt: "

    .line 279
    .line 280
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 284
    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v7, ", "

    .line 293
    .line 294
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget v7, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    .line 298
    .line 299
    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const-string v7, "FingerprintAuthenticationClient.Ext"

    .line 311
    .line 312
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldCancelIfBackgroundAuthentication:Z

    .line 316
    .line 317
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_e

    .line 324
    .line 325
    const/16 v1, 0x10

    .line 326
    .line 327
    invoke-virtual {v6, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_9

    .line 332
    .line 333
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 334
    .line 335
    const-string v7, "EXTRA_KEY_AUTH_FLAG"

    .line 336
    .line 337
    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    const v7, 0x8000

    .line 342
    .line 343
    .line 344
    and-int/2addr v1, v7

    .line 345
    if-eqz v1, :cond_a

    .line 346
    .line 347
    :cond_9
    move v9, v0

    .line 348
    :cond_a
    invoke-virtual {v6, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->createUdfpsSysUiImpl(Z)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 353
    .line 354
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 355
    .line 356
    if-eqz v1, :cond_b

    .line 357
    .line 358
    iput v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 359
    .line 360
    :cond_b
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_e

    .line 365
    .line 366
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 367
    .line 368
    iget v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->checkGuideLayerAndTouchBlock(I)V

    .line 371
    .line 372
    .line 373
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 374
    .line 375
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 376
    .line 377
    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    const-string v7, "EXTRA_KEY_ICON_COLOR"

    .line 383
    .line 384
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    const-string v9, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    .line 389
    .line 390
    if-nez v8, :cond_c

    .line 391
    .line 392
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    if-nez v8, :cond_c

    .line 397
    .line 398
    and-int/lit8 v8, v2, 0x20

    .line 399
    .line 400
    if-eqz v8, :cond_d

    .line 401
    .line 402
    :cond_c
    new-instance v8, Landroid/os/Bundle;

    .line 403
    .line 404
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 405
    .line 406
    .line 407
    iput-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 408
    .line 409
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    invoke-virtual {v8, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 417
    .line 418
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 426
    .line 427
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    .line 429
    .line 430
    :cond_d
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 431
    .line 432
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;

    .line 433
    .line 434
    invoke-direct {v1, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V

    .line 438
    .line 439
    .line 440
    :cond_e
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

    .line 441
    .line 442
    move-object v0, v7

    .line 443
    move-object/from16 v1, v33

    .line 444
    .line 445
    move/from16 v2, v32

    .line 446
    .line 447
    move/from16 v3, p0

    .line 448
    .line 449
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIJ)V

    .line 450
    .line 451
    .line 452
    move/from16 v1, p0

    .line 453
    .line 454
    move-object/from16 v0, v33

    .line 455
    .line 456
    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 457
    .line 458
    .line 459
    return-void
.end method
