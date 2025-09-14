.class public final Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final TAG:Ljava/lang/String; = "KG.SystemIntentProcessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, -0x3e8

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "err wrapper = "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 14
    .line 15
    const-string v2, "KG.SystemIntentProcessor"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 25
    .line 26
    :cond_1
    return v0
.end method

.method public static handleBootCompleted(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "handling boot completed"

    .line 2
    .line 3
    const-string v1, "KG.SystemIntentProcessor"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStateAndSetToKGSystemProperty()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTaErrorCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSetupWizardFinished(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "isSetupWizardFinished : "

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkTaIntegrity(II)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-boolean v4, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    const-string v0, "checkTaIntegrity false. Lock device without passcode."

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget v0, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->errorCode:I

    .line 54
    .line 55
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getTALockScreenErrorCode(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkAPSerialIntegrity(I)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    const-string v0, "checkAPSerialIntegrity false. Lock device without passcode."

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string v0, "1002"

    .line 75
    .line 76
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const/4 v2, 0x1

    .line 81
    invoke-static {p0, v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-boolean v4, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    const-string v2, "checkKGClientIntegrity true. "

    .line 90
    .line 91
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x3

    .line 95
    if-ne v2, v0, :cond_8

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 100
    .line 101
    .line 102
    const-string v2, "KG bindToLockScreen"

    .line 103
    .line 104
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    new-instance v1, Landroid/os/Handler;

    .line 118
    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    const-wide/32 v3, 0x493e0

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_7

    .line 143
    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    const-string p0, "Device country is China"

    .line 147
    .line 148
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->setCheckingStateToKg()V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    if-eqz v3, :cond_6

    .line 156
    .line 157
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    const-string v0, "China Binary and previously enrolled. Lock device without passcode."

    .line 164
    .line 165
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    const-string v0, "3040"

    .line 169
    .line 170
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_0
    return-void

    .line 174
    :cond_7
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {p0, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v2, "checkKGClientIntegrity false. Lock device without passcode."

    .line 186
    .line 187
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    :cond_9
    return-void
.end method

.method public static handlePackageDataCleared(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "handling package data cleared"

    .line 2
    .line 3
    const-string v1, "KG.SystemIntentProcessor"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v0, "uri"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/net/Uri;

    .line 27
    .line 28
    const-string v0, "com.samsung.android.kgclient"

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v0, 0x3

    .line 45
    if-ne v0, p1, :cond_1

    .line 46
    .line 47
    const-string p1, "3001"

    .line 48
    .line 49
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p0, "Client data was cleared. Lock device"

    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public static handlePackageReplacedOrRemoved(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "handling package replaced or removed"

    .line 2
    .line 3
    const-string v1, "KG.SystemIntentProcessor"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v0, "uri"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "com.samsung.android.kgclient"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-boolean v0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string p0, "checkKGClientIntegrity true. Do nothing."

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p0, "checkKGClientIntegrity false. Lock device without passcode."

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "com.android.systemui"

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void
.end method

.method public static handleSetupWizardCompleted(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "handling setup wizard completed"

    .line 2
    .line 3
    const-string v1, "KG.SystemIntentProcessor"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "China Binary and previously enrolled. Lock device without passcode."

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const-string v0, "3040"

    .line 33
    .line 34
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public static handleUserPresent(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "handling user present"

    .line 2
    .line 3
    const-string v1, "KG.SystemIntentProcessor"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "Locking device "

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-ne v2, v0, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 24
    .line 25
    .line 26
    const-string p0, "KG bindToLockScreen"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "2003"

    .line 42
    .line 43
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public static synthetic lambda$handleBootCompleted$0()V
    .locals 3

    .line 1
    const-string v0, "KG.SystemIntentProcessor"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 11
    .line 12
    .line 13
    const-string v1, "KG bindToLockScreen"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public static setCheckingStateToKg()V
    .locals 4

    .line 1
    const-string/jumbo v0, "setCheckingStateToKg result "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setCheckingStateToKg"

    .line 5
    .line 6
    .line 7
    const-string v2, "KG.SystemIntentProcessor"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 13
    .line 14
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->getResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v3, "setCheckingStateToKg Exception "

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
