.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final IS_OPTICAL:Z


# instance fields
.field public mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

.field public final mFodRect:Landroid/graphics/Rect;

.field public final mGetTspManager:Ljava/util/function/Supplier;

.field public final mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

.field public mSemSensorActiveArea:Ljava/lang/String;

.field public mSemSensorAreaHeight:Ljava/lang/String;

.field public mSemSensorAreaWidth:Ljava/lang/String;

.field public mSemSensorDraggingArea:Ljava/lang/String;

.field public mSemSensorImageSize:Ljava/lang/String;

.field public mSemSensorMarginBottom:Ljava/lang/String;

.field public mSemSensorMarginLeft:Ljava/lang/String;

.field public final mSysFsProviderImpl:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 6
    .line 7
    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Ljava/util/function/Supplier;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "9"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "4"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "13.77"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "0"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "13.00"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "14.80"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "5.00"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSysFsProviderImpl:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mGetTspManager:Ljava/util/function/Supplier;

    .line 35
    .line 36
    new-instance p2, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    sget-boolean p2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 56
    .line 57
    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;-><init>(Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Ljava/util/function/Supplier;Z)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 61
    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Landroid/util/Pair;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " FOD : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, " TSP : "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "\n TSP : "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mLastCmd:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ", "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    .line 93
    .line 94
    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 98
    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, " Optical, HW_LS : "

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsSupportHwLightSource:Z

    .line 109
    .line 110
    const-string v2, " Optical, B : "

    .line 111
    .line 112
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 117
    .line 118
    const-string v2, " Optical, N : "

    .line 119
    .line 120
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 125
    .line 126
    const-string v2, " Optical, C : "

    .line 127
    .line 128
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    .line 133
    .line 134
    const-string v2, " Optical, DT : "

    .line 135
    .line 136
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayPanelType:Ljava/lang/String;

    .line 141
    .line 142
    const-string v2, " Optical, LD : "

    .line 143
    .line 144
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsLimitedDisplayOn:Z

    .line 149
    .line 150
    const-string v2, " Optical, CS : "

    .line 151
    .line 152
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationStatus:I

    .line 157
    .line 158
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 162
    .line 163
    monitor-enter v0

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 165
    .line 166
    check-cast p0, Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    .line 182
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v3, " Optical, M : "

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :catchall_0
    move-exception p0

    .line 212
    goto :goto_2

    .line 213
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz p2, :cond_2

    .line 215
    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v0, " Optical, Calibrated time : "

    .line 219
    .line 220
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/16 v0, 0x100

    .line 224
    .line 225
    new-array v0, v0, [B

    .line 226
    .line 227
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 230
    .line 231
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p2, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 240
    .line 241
    const/4 v5, 0x0

    .line 242
    const/16 v3, 0x28

    .line 243
    .line 244
    const/4 v4, 0x0

    .line 245
    move-object v6, v0

    .line 246
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-lez p2, :cond_1

    .line 251
    .line 252
    new-instance v1, Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 259
    .line 260
    invoke-direct {v1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    goto :goto_1

    .line 268
    :cond_1
    const/4 p2, 0x0

    .line 269
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    throw p0

    .line 286
    :cond_2
    :goto_3
    return-void
.end method

.method public final getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    const-string v0, "FingerprintService"

    .line 2
    .line 3
    const-string/jumbo v1, "getFodSensorAreaRect: "

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    :try_start_0
    const-string/jumbo v3, "window"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/view/WindowManager;

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    new-instance p3, Landroid/graphics/Point;

    .line 28
    .line 29
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 44
    .line 45
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/high16 v3, 0x41680000    # 14.5f

    .line 62
    .line 63
    const/4 v4, 0x5

    .line 64
    invoke-static {v4, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-static {v4, v5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {v4, v6, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {v4, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    float-to-int p1, v3

    .line 99
    div-int/lit8 v3, p1, 0x2

    .line 100
    .line 101
    float-to-int v4, v6

    .line 102
    sub-int/2addr v3, v4

    .line 103
    float-to-int v4, v5

    .line 104
    float-to-int p0, p0

    .line 105
    const/4 v5, 0x2

    .line 106
    div-int/2addr p0, v5

    .line 107
    add-int/2addr v4, p0

    .line 108
    div-int/lit8 p0, p1, 0x2

    .line 109
    .line 110
    add-int/2addr v4, p0

    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    const/4 p0, 0x1

    .line 114
    if-eq p2, p0, :cond_5

    .line 115
    .line 116
    if-eq p2, v5, :cond_4

    .line 117
    .line 118
    const/4 p0, 0x3

    .line 119
    if-eq p2, p0, :cond_3

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 123
    .line 124
    sub-int/2addr v4, p1

    .line 125
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    iget p0, p3, Landroid/graphics/Point;->y:I

    .line 128
    .line 129
    div-int/2addr p0, v5

    .line 130
    sub-int/2addr p0, v3

    .line 131
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    add-int/2addr p0, p1

    .line 134
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    iget p0, p3, Landroid/graphics/Point;->x:I

    .line 138
    .line 139
    div-int/2addr p0, v5

    .line 140
    add-int/2addr p0, v3

    .line 141
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    sub-int/2addr p0, p1

    .line 144
    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 145
    .line 146
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 147
    .line 148
    sub-int/2addr v4, p1

    .line 149
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    iget p0, p3, Landroid/graphics/Point;->x:I

    .line 153
    .line 154
    sub-int/2addr p0, v4

    .line 155
    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 156
    .line 157
    add-int/2addr p0, p1

    .line 158
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 159
    .line 160
    iget p0, p3, Landroid/graphics/Point;->y:I

    .line 161
    .line 162
    div-int/2addr p0, v5

    .line 163
    add-int/2addr p0, v3

    .line 164
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 165
    .line 166
    sub-int/2addr p0, p1

    .line 167
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    iget p0, p3, Landroid/graphics/Point;->x:I

    .line 171
    .line 172
    div-int/2addr p0, v5

    .line 173
    sub-int/2addr p0, v3

    .line 174
    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 175
    .line 176
    add-int/2addr p0, p1

    .line 177
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 178
    .line 179
    iget p0, p3, Landroid/graphics/Point;->y:I

    .line 180
    .line 181
    sub-int/2addr p0, v4

    .line 182
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 183
    .line 184
    add-int/2addr p0, p1

    .line 185
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 186
    .line 187
    :goto_1
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 188
    .line 189
    if-eqz p0, :cond_7

    .line 190
    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, ", "

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string p2, ""

    .line 222
    .line 223
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_7
    :goto_3
    return-object v2
.end method

.method public final getInDisplaySensorArea(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "sem_area"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 32
    .line 33
    const-string/jumbo v1, "brightness"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    const-string/jumbo v1, "lightColor"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "nits"

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
