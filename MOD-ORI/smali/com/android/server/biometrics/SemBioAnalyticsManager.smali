.class public final Lcom/android/server/biometrics/SemBioAnalyticsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

.field public mFaceQualityBigFace:I

.field public mFaceQualityNoFace:I

.field public mFaceQualitySmallFace:I

.field public mFaceStartTime:J

.field public mFpAuthRejectConsecutively:I

.field public final mH:Landroid/os/Handler;

.field public mIsFirstSensorCheckForDQA:Z

.field public mIsSensorErrorForDQA:Z

.field public mLatestAuthenticatedForDQA:I

.field public mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceStartTime:J

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final faceOnAuthenticatedFailure(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 2
    .line 3
    const-string v1, "FAIF"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x3

    .line 7
    invoke-direct {v0, v2, v3, v1, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 30
    .line 31
    const-string v1, "FAFF"

    .line 32
    .line 33
    invoke-direct {v0, v2, v3, v1, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    .line 5
    .line 6
    const-string v1, "BiometricService.AM"

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "SA: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "FPIS"

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v3, 0x1

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iput v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "FPIF"

    .line 61
    .line 62
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 72
    .line 73
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 74
    .line 75
    if-eqz v0, :cond_c

    .line 76
    .line 77
    iget v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 78
    .line 79
    and-int/2addr v0, v3

    .line 80
    if-eqz v0, :cond_c

    .line 81
    .line 82
    new-instance v0, Landroid/content/Intent;

    .line 83
    .line 84
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string/jumbo v3, "tracking_id"

    .line 88
    .line 89
    .line 90
    const-string v4, "4G2-399-4810151"

    .line 91
    .line 92
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string/jumbo v4, "feature"

    .line 97
    .line 98
    .line 99
    iget-object v5, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 105
    .line 106
    const-string/jumbo v5, "extra"

    .line 107
    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_b

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz p1, :cond_b

    .line 125
    .line 126
    const-string/jumbo v2, "com.android.vending"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_6

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    const-string/jumbo v2, "com.samsung.android.spay"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    const-string/jumbo v2, "com.paypal.android.p2pmobile"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    const-string/jumbo v2, "com.squareup.cash"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_9

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_9
    const-string/jumbo v2, "com.venmo"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_a

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_a
    const-string/jumbo v2, "com.zellepay.zell"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_b

    .line 184
    .line 185
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v2, "FINGERPRINT_IDENTIFICATION"

    .line 191
    .line 192
    filled-new-array {v5}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const-string/jumbo v2, "personalizedData"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 203
    .line 204
    .line 205
    :cond_b
    const-string/jumbo p1, "pkg_name"

    .line 206
    .line 207
    .line 208
    const-string/jumbo v2, "com.android.server.biometrics.sensors.fingerprint"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string/jumbo p1, "type"

    .line 215
    .line 216
    .line 217
    const-string/jumbo v2, "ev"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string/jumbo p1, "is_summary"

    .line 224
    .line 225
    .line 226
    const-string/jumbo v2, "true"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string/jumbo p1, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    const-string/jumbo p1, "com.sec.android.diagmonagent"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_0
    move-exception p0

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v0, "SemAnalyticsManager.insertLog: "

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_c
    :goto_2
    return-void
.end method

.method public final fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 3
    const-string p3, "FPIS"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "FPFC"

    if-eqz p3, :cond_2

    .line 4
    iget p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    const/4 p3, 0x6

    if-lt p2, p3, :cond_1

    rem-int/lit8 p3, p2, 0x5

    if-eqz p3, :cond_1

    .line 5
    :cond_0
    new-instance p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p1, v0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    goto :goto_0

    .line 7
    :cond_2
    const-string p3, "FPIF"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    const/4 p3, 0x5

    if-lt p2, p3, :cond_3

    .line 9
    rem-int/lit8 p3, p2, 0x5

    if-nez p3, :cond_3

    .line 10
    new-instance p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p1, v0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final fpInsertLogHelp(IIILjava/lang/String;)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    const/16 p1, 0x3e9

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "FPQW"

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 p1, 0x3eb

    .line 13
    .line 14
    if-ne p2, p1, :cond_1

    .line 15
    .line 16
    const-string p1, "FPQL"

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/16 p1, 0x3ee

    .line 20
    .line 21
    if-ne p2, p1, :cond_2

    .line 22
    .line 23
    const-string p1, "FPQU"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :pswitch_1
    const-string p1, "FPQF"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_2
    const-string p1, "FPQS"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :pswitch_3
    const-string p1, "FPQD"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :pswitch_4
    const-string p1, "FPQI"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_5
    const-string p1, "FPQP"

    .line 41
    .line 42
    :goto_1
    if-eqz p1, :cond_3

    .line 43
    .line 44
    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    invoke-direct {p2, v0, p3, p1, p4}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getOperationTime()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceStartTime:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long p0, v2, v4

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    sub-long v6, v0, v2

    .line 14
    .line 15
    cmp-long p0, v6, v4

    .line 16
    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
.end method

.method public injectPendingList(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    .line 26
    .line 27
    return-void
.end method
