.class public final Lcom/android/server/biometrics/SemBiometricSysUiWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Landroid/util/Pair;

.field public final mGetModalityFunc:Ljava/util/function/IntFunction;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

.field public final mSessionToInstanceId:Ljava/util/Map;

.field public final mSessions:Ljava/util/Map;

.field public final mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/log/BiometricContextProvider;Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    .line 6
    const/high16 v1, 0x100000

    .line 8
    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 26
    iput-object p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mGetModalityFunc:Ljava/util/function/IntFunction;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    .line 30
    const/4 p2, 0x2

    .line 31
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 34
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 36
    sget-object p1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 38
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 40
    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;)V

    .line 45
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    .line 47
    return-void
.end method


# virtual methods
.method public final hideAuthenticationDialog(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/util/Pair;

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v0, "hideAuthenticationDialog: no session info with "

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string p1, "SemBiometricSysUiWrapper"

    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1

    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance p2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;

    .line 53
    invoke-direct {p2, p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public final onBiometricError(III)V
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 3
    if-ne p2, v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 7
    new-instance p3, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {p3, p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;I)V

    .line 12
    check-cast p2, Ljava/util/HashMap;

    .line 14
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 20
    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;

    .line 22
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;III)V

    .line 25
    check-cast v0, Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 30
    :goto_0
    return-void
.end method

.method public final showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p2

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 10
    move-result-object v3

    .line 11
    move/from16 v4, p5

    .line 13
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    .line 16
    move-result v9

    .line 17
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 19
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v4

    .line 23
    check-cast v3, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/util/Pair;

    .line 31
    const-string v4, "SemBiometricSysUiWrapper"

    .line 33
    if-nez v3, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v1, "showAuthenticationDialog: no session info with "

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    move-wide/from16 v1, p9

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 56
    :cond_0
    new-instance v13, Landroid/os/Bundle;

    .line 58
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 61
    const/4 v5, 0x0

    .line 62
    const v6, 0x8000

    .line 65
    if-eqz v0, :cond_7

    .line 67
    array-length v7, v0

    .line 68
    if-lez v7, :cond_7

    .line 70
    array-length v7, v0

    .line 71
    move v8, v5

    .line 72
    move v10, v8

    .line 73
    :goto_0
    if-ge v8, v7, :cond_1

    .line 75
    aget v11, v0, v8

    .line 77
    iget-object v12, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mGetModalityFunc:Ljava/util/function/IntFunction;

    .line 79
    invoke-interface {v12, v11}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 82
    move-result-object v11

    .line 83
    check-cast v11, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 88
    move-result v11

    .line 89
    or-int/2addr v10, v11

    .line 90
    add-int/2addr v8, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const-string v7, "KEY_AVAILABILITY_BIOMETRIC"

    .line 94
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-object v7, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mGetModalityFunc:Ljava/util/function/IntFunction;

    .line 99
    aget v0, v0, v5

    .line 101
    invoke-interface {v7, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Integer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result v0

    .line 111
    sget-boolean v7, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 113
    if-eq v0, v2, :cond_6

    .line 115
    const/4 v6, 0x2

    .line 116
    const/16 v7, 0x8

    .line 118
    if-eq v0, v6, :cond_5

    .line 120
    const/4 v6, 0x4

    .line 121
    if-eq v0, v6, :cond_4

    .line 123
    if-eq v0, v7, :cond_3

    .line 125
    const/16 v6, 0x100

    .line 127
    if-eq v0, v6, :cond_2

    .line 129
    const-string/jumbo v6, "biometricAuthenticatorModalityToVendorSysUiType: Unknown modality:"

    .line 132
    const-string v7, "BiometricUtils"

    .line 134
    invoke-static {v0, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    move v6, v5

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    const/16 v6, 0x4000

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    const/16 v6, 0x1000

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    const/16 v6, 0x2000

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move v6, v7

    .line 149
    :cond_6
    :goto_1
    move v7, v6

    .line 150
    goto :goto_2

    .line 151
    :cond_7
    if-eqz p3, :cond_c

    .line 153
    goto :goto_1

    .line 154
    :goto_2
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {v0, v9}, Lcom/android/server/biometrics/Utils;->isWorkProfile(Landroid/content/Context;I)Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_8

    .line 162
    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 164
    const-class v6, Landroid/app/admin/DevicePolicyManager;

    .line 166
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 172
    const-string v6, "MANAGED_PROFILE"

    .line 174
    invoke-virtual {v13, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const-string v6, "MANAGED_PROFILE_COLOR"

    .line 179
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    .line 182
    move-result v0

    .line 183
    invoke-virtual {v13, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_3

    .line 187
    :catch_0
    move-exception v0

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v8, "setManagedProfileInfo: "

    .line 193
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {v0, v6, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 199
    :cond_8
    :goto_3
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_b

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 208
    move-result v0

    .line 209
    and-int/lit8 v0, v0, 0x20

    .line 211
    if-eqz v0, :cond_b

    .line 213
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_9

    .line 219
    const-string v0, "SECURE_FOLDER"

    .line 221
    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {v0, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    const-string v2, "SECURE_FOLDER_NAME"

    .line 232
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    goto :goto_5

    .line 236
    :cond_9
    const-string v0, "MANAGED_PROFILE_KNOX"

    .line 238
    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {v0, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    const-string v4, "MANAGED_PROFILE_KNOX_NAME"

    .line 249
    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 254
    const-string/jumbo v4, "knox_finger_print_plus"

    .line 257
    invoke-static {v0, v5, v9, v4, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 260
    move-result v0

    .line 261
    if-ne v0, v2, :cond_a

    .line 263
    move v0, v2

    .line 264
    goto :goto_4

    .line 265
    :cond_a
    move v0, v5

    .line 266
    :goto_4
    const-string v6, "MANAGED_PROFILE_KNOX_TWO_FACTOR"

    .line 268
    invoke-virtual {v13, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {v0, v5, v9, v4, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 276
    move-result v0

    .line 277
    if-ne v0, v2, :cond_b

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 282
    move-result v0

    .line 283
    and-int/lit16 v0, v0, 0x80

    .line 285
    if-eqz v0, :cond_b

    .line 287
    const-string v0, "MANAGED_PROFILE_KNOX_ONLY_CONFIRM_BIOMETRIC"

    .line 289
    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_b
    :goto_5
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 294
    check-cast v0, Ljava/lang/Integer;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 299
    move-result v6

    .line 300
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;

    .line 307
    move-object v4, v2

    .line 308
    move-object v5, v0

    .line 309
    move/from16 v8, p4

    .line 311
    move-object/from16 v10, p8

    .line 313
    move-wide/from16 v11, p6

    .line 315
    move-object/from16 v14, p1

    .line 317
    invoke-direct/range {v4 .. v14}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V

    .line 320
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 323
    iput-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mCurrentSession:Landroid/util/Pair;

    .line 325
    const-wide/16 v2, 0xbb8

    .line 327
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    .line 329
    iget-object v1, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    .line 331
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void

    .line 335
    :cond_c
    const-string/jumbo v0, "showAuthenticationDialog: Unknown prompt type"

    .line 338
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 343
    check-cast v0, Lcom/android/server/biometrics/BiometricService$2;

    .line 345
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 347
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 349
    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 351
    new-instance v4, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    .line 353
    const/4 v5, 0x3

    .line 354
    const/4 v6, -0x1

    .line 355
    move-object p0, v4

    .line 356
    move-object/from16 p1, v0

    .line 358
    move-wide/from16 p2, v2

    .line 360
    move/from16 p4, v5

    .line 362
    move/from16 p5, v6

    .line 364
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;JII)V

    .line 367
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method
