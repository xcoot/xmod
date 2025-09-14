.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/BiometricService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v4, "initBiometricsTimestamp: user length = "

    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    const-string v4, "BiometricService"

    .line 43
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    const-string/jumbo v5, "initBiometricsTimestamp: "

    .line 61
    if-eqz v3, :cond_7

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v6

    .line 73
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 75
    invoke-static {v6, v3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 78
    move-result v3

    .line 79
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v6

    .line 83
    const-string/jumbo v7, "biometrics_strong_enroll_timestamp"

    .line 86
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object v6

    .line 90
    const-wide/16 v8, -0x1

    .line 92
    :try_start_0
    invoke-static {v6, v7, v8, v9, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 95
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v6

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v10, "getIntDb: "

    .line 103
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v10, "BiometricUtils"

    .line 108
    invoke-static {v6, v7, v10}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 111
    move-wide v6, v8

    .line 112
    :goto_1
    sget-boolean v10, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 114
    if-eqz v10, :cond_1

    .line 116
    new-instance v11, Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v12, "timestamp db = ["

    .line 121
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v12, "]: "

    .line 129
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 139
    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    cmp-long v6, v6, v8

    .line 144
    if-nez v6, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 153
    move-result-object v6

    .line 154
    const-string v7, "auto_time"

    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 160
    move-result v6

    .line 161
    if-lez v6, :cond_2

    .line 163
    const/4 v8, 0x1

    .line 164
    :cond_2
    const-wide/16 v6, 0x0

    .line 166
    if-eqz v8, :cond_5

    .line 168
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v8

    .line 174
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_6

    .line 180
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v9

    .line 184
    check-cast v9, Lcom/android/server/biometrics/BiometricSensor;

    .line 186
    invoke-virtual {v9}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 189
    move-result v10

    .line 190
    const/16 v11, 0xf

    .line 192
    invoke-static {v10, v11}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 195
    move-result v10

    .line 196
    if-eqz v10, :cond_3

    .line 198
    :try_start_1
    iget-object v10, v9, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 200
    invoke-interface {v10, v3, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    .line 203
    move-result v10

    .line 204
    if-eqz v10, :cond_3

    .line 206
    sget-boolean v10, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 208
    if-eqz v10, :cond_4

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string/jumbo v11, "timestamp authenticator id: "

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v9, v9, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 223
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v9

    .line 230
    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    goto :goto_3

    .line 234
    :catch_1
    move-exception v9

    .line 235
    goto :goto_4

    .line 236
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    goto :goto_5

    .line 241
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-static {v9, v10, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 249
    goto :goto_2

    .line 250
    :cond_5
    if-eqz v10, :cond_6

    .line 252
    const-string/jumbo v5, "initBiometricsTimestamp: No auto time"

    .line 255
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 261
    move-result-object v5

    .line 262
    invoke-static {v5, v6, v7, v3}, Lcom/android/server/biometrics/Utils;->putLongDb(Landroid/content/Context;JI)V

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 275
    move-result-wide v2

    .line 276
    sub-long/2addr v2, v0

    .line 277
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, " ms"

    .line 282
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p0

    .line 289
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method
