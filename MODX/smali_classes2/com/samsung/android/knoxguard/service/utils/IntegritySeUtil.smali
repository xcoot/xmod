.class public final Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_ADMIN_RECEIVER:I = 0x40

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_ALARM_SERVICE:I = 0x400

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_KG_EVENT_SERVICE:I = 0x200

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_KG_PROVIDER:I = 0x800

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_SELFUPDATE_RECEIVER:I = 0x100

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_SYSTEM_INTENT_RECEIVER:I = 0x80

.field public static final CLIENT_INTEGRITY_BASE2:I = 0x1001

.field public static final CLIENT_INTEGRITY_ERROR_ENABLED:I = 0x4

.field public static final CLIENT_INTEGRITY_ERROR_INVALID_VERSION:I = 0x8

.field public static final CLIENT_INTEGRITY_ERROR_SIGNATURE:I = 0x2

.field public static final KG2_STARTED_VERSION_CODE:J = 0x11e1a300L

.field public static final TAG:Ljava/lang/String; = "KG.IntegritySeUtil"


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

.method public static checkAPSerialIntegrity(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isAPSerialValid()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public static checkComponentsAndEnableComponentWithFlag(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;Z)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isKGComponentsEnabled(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget-object p2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Enabling components due to maintenance mode"

    .line 18
    .line 19
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponents(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isKGComponentsEnabled(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    return v0
.end method

.method public static checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static checkKGClientIntegrityAndEnableComponent(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .locals 11

    .line 1
    const-string v0, "isComponentEnabled : "

    .line 2
    .line 3
    const-string v1, "isValidVersion : "

    .line 4
    .line 5
    const-string v2, "isEnabled : "

    .line 6
    .line 7
    const-string v3, "isSystemApp : "

    .line 8
    .line 9
    const-string v4, "checkSignatures : "

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v6, "checkKGClientIntegrity()"

    .line 14
    .line 15
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v7, "kgState() : "

    .line 21
    .line 22
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    .line 36
    .line 37
    invoke-direct {v6}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v7, 0x4

    .line 41
    if-ne v7, p1, :cond_0

    .line 42
    .line 43
    const-string p0, "checkKGClientIntegrity() KG_STATE_COMPLETED. Do nothing."

    .line 44
    .line 45
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    iput-boolean p0, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    .line 50
    .line 51
    return-object v6

    .line 52
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isSystemApp(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isEnabled(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isValidVersion(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    iput-boolean p1, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    .line 129
    .line 130
    iput-boolean v8, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    .line 131
    .line 132
    iput-boolean v9, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    .line 133
    .line 134
    invoke-static {p0, v6, p2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkComponentsAndEnableComponentWithFlag(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;Z)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    if-nez v9, :cond_1

    .line 154
    .line 155
    const-string v0, "kgclient is invalid. makes client disable"

    .line 156
    .line 157
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->disableClient(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catch_0
    move-exception p0

    .line 165
    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    and-int p0, p1, v8

    .line 167
    .line 168
    and-int/2addr p0, v9

    .line 169
    and-int/2addr p0, p2

    .line 170
    iput-boolean p0, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    return-object v6

    .line 173
    :goto_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return-object v6
.end method

.method public static checkSignatures(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-string v0, "com.samsung.android.kgclient"

    .line 2
    .line 3
    const-string/jumbo v1, "pkgInfo : "

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x40

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const-string v1, "android"

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    const-string p0, "KG Client signature doesn\'t match with platform."

    .line 47
    .line 48
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string p0, "KG Client signature match with platform."

    .line 55
    .line 56
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "checkKGClientIntegrity Exception. "

    .line 64
    .line 65
    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v2
.end method

.method public static checkSystemUiIntegrity(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkSystemUiIntegrity()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->testSystemUiCorrupted(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->powerOff(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static checkTaIntegrity(II)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v2, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isTaErrorCode(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    iput p1, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->errorCode:I

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput-boolean p0, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iput-boolean v2, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "checkTaIntegrity Exception. "

    .line 43
    .line 44
    invoke-static {p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-object v0
.end method

.method public static disableClient(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "PackageManager is null"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "disable kgclient"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const-string v0, "com.samsung.android.kgclient"

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "disable exception: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public static enableAppOpIfNotAllowed(Landroid/content/pm/PackageInfo;Landroid/app/AppOpsManager;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4
    .line 5
    const-string v1, "com.samsung.android.kgclient"

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "allow "

    .line 16
    .line 17
    invoke-static {p2, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static enableComponent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.kgclient"

    .line 4
    .line 5
    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "IPackageManager is null"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v2, 0x1

    .line 33
    move v4, p2

    .line 34
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "PackageManager is null"

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, v1, p1, p1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :goto_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p2, "enableComponent Exception. "

    .line 60
    .line 61
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public static enableComponents(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "enableComponents()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getActiveUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    .line 13
    .line 14
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string v1, "com.samsung.android.kgclient.receiver.SystemIntentReceiver"

    .line 18
    .line 19
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver"

    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v1, "com.samsung.android.kgclient.events.KGEventService"

    .line 28
    .line 29
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string v1, "com.samsung.android.kgclient.alarm.AlarmService"

    .line 33
    .line 34
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string v1, "com.samsung.android.kgclient.provider.KGProvider"

    .line 38
    .line 39
    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static getActiveUserId()I
    .locals 5

    .line 1
    const-string/jumbo v0, "user id is "

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v4, "semGetCurrentUser error: "

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :goto_1
    return v1
.end method

.method public static getClientVersionCode(Landroid/content/Context;J)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "PackageManager is null"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    :try_start_0
    const-string v0, "com.samsung.android.kgclient"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 25
    .line 26
    .line 27
    move-result-wide p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-wide p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Client Notfound : "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    return-wide p1
.end method

.method public static getFailedIntegrityResult(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "SIGNATURE,"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "ENABLED,"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const-string v1, "VERSION,"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const-string v1, "KGDeviceAdminReceiver,"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    const-string v1, "SystemIntentReceiver,"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    const-string v1, "SelfUpdateReceiver,"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 61
    .line 62
    if-nez v1, :cond_6

    .line 63
    .line 64
    const-string v1, "KgEventService,"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 70
    .line 71
    if-nez v1, :cond_7

    .line 72
    .line 73
    const-string v1, "AlarmService,"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_7
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    .line 79
    .line 80
    if-nez p0, :cond_8

    .line 81
    .line 82
    const-string p0, "KGProvider,"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static getTALockScreenErrorCode(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, -0x3ee

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x201

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x207

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v1, "not listed code : "

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "1004"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "1003"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string p0, "1001"

    .line 31
    .line 32
    :goto_0
    return-object p0
.end method

.method public static hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p0

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method public static isAPSerialValid()Z
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x20

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    const-string v1, "[a-fA-F0-9]{32}"

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "isAPSerialValid - "

    .line 38
    .line 39
    invoke-static {v2, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "com.samsung.android.kgclient"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "isEnabled NameNotFoundException : "

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v0
.end method

.method public static isKGComponentsEnabled(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    .line 3
    .line 4
    .line 5
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const-string v2, "com.samsung.android.kgclient"

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "IPackageManager is null"

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getActiveUserId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-wide/16 v3, 0xe

    .line 31
    .line 32
    invoke-interface {p0, v2, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "PackageManager is null"

    .line 46
    .line 47
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    const/16 v1, 0xe

    .line 52
    .line 53
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 58
    .line 59
    const-string v3, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    .line 60
    .line 61
    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 66
    .line 67
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    const-string v3, "com.samsung.android.kgclient.receiver.SystemIntentReceiver"

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 76
    .line 77
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 78
    .line 79
    const-string v3, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver"

    .line 80
    .line 81
    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 86
    .line 87
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 88
    .line 89
    const-string v3, "com.samsung.android.kgclient.events.KGEventService"

    .line 90
    .line 91
    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 96
    .line 97
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 98
    .line 99
    const-string v3, "com.samsung.android.kgclient.alarm.AlarmService"

    .line 100
    .line 101
    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 106
    .line 107
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 108
    .line 109
    const-string v1, "com.samsung.android.kgclient.provider.KGProvider"

    .line 110
    .line 111
    invoke-static {p0, v2, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    iput-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_1
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v3, "isKGComponentsEnabled error: "

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_2
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 142
    .line 143
    if-eqz p0, :cond_3

    .line 144
    .line 145
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 146
    .line 147
    if-eqz p0, :cond_3

    .line 148
    .line 149
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 150
    .line 151
    if-eqz p0, :cond_3

    .line 152
    .line 153
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 154
    .line 155
    if-eqz p0, :cond_3

    .line 156
    .line 157
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 158
    .line 159
    if-eqz p0, :cond_3

    .line 160
    .line 161
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    .line 162
    .line 163
    if-eqz p0, :cond_3

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    :cond_3
    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "com.samsung.android.kgclient"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    and-int/2addr p0, v1

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "isSystemApp NameNotFoundException : "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    return v0
.end method

.method public static isTaErrorCode(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    if-eq v0, p0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x207

    .line 6
    .line 7
    if-eq v0, p0, :cond_1

    .line 8
    .line 9
    const/16 v0, -0x3ee

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static isValidVersion(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-wide/32 v0, 0x11e1a300

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getClientVersionCode(Landroid/content/Context;J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-gtz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static setInitialState(Landroid/content/Context;ILandroid/app/AppOpsManager$OnOpChangedInternalListener;)V
    .locals 9

    .line 1
    const-string v0, "com.samsung.android.kgclient"

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v3, "setInitialState, state : "

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v2, "device_policy"

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string p0, "DPM is not available"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_1

    .line 52
    .line 53
    const-string p0, "KGClient is malicious, it will be locked"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x4

    .line 60
    if-eq v1, p1, :cond_5

    .line 61
    .line 62
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v6, v0, v5}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    invoke-interface {v6, v0, v4, v5}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v5

    .line 81
    sget-object v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v8, "Exception - unhide "

    .line 86
    .line 87
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v7, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    .line 94
    .line 95
    const-string v6, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    .line 96
    .line 97
    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    if-eq v6, p1, :cond_4

    .line 102
    .line 103
    const/4 v6, 0x3

    .line 104
    if-ne v6, p1, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :try_start_2
    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_1
    move-exception v2

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    const-string/jumbo v6, "setInitialState call edm admin api for adding edm services!!!"

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_5

    .line 126
    .line 127
    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :goto_2
    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string v6, "com.samsung.android.kgclientsetActiveAdmin"

    .line 134
    .line 135
    invoke-static {v2, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_3
    const-string/jumbo v2, "ro.boot.kg.bit"

    .line 139
    .line 140
    .line 141
    const-string v5, "FF"

    .line 142
    .line 143
    invoke-static {v2, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v5, "01"

    .line 148
    .line 149
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    const-string v6, "1"

    .line 154
    .line 155
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-nez v6, :cond_7

    .line 160
    .line 161
    const-string v6, "11"

    .line 162
    .line 163
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_6

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    move v2, v4

    .line 171
    goto :goto_5

    .line 172
    :cond_7
    :goto_4
    const/4 v2, 0x1

    .line 173
    :goto_5
    if-nez v5, :cond_8

    .line 174
    .line 175
    if-eqz v2, :cond_9

    .line 176
    .line 177
    if-eq v1, p1, :cond_9

    .line 178
    .line 179
    :cond_8
    :try_start_3
    const-string p1, "appops"

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    check-cast p0, Landroid/app/AppOpsManager;

    .line 186
    .line 187
    const/4 p1, -0x1

    .line 188
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    sget-object p2, Lcom/samsung/android/knoxguard/service/utils/Constants;->PROTECTED_APP_OPS_LIST:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-static {p1, p0, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableAppOpIfNotAllowed(Landroid/content/pm/PackageInfo;Landroid/app/AppOpsManager;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :catchall_0
    move-exception p0

    .line 222
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 223
    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v0, "Error - appOps : "

    .line 227
    .line 228
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    :cond_9
    return-void

    .line 246
    :catch_2
    move-exception p0

    .line 247
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 248
    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v0, "Client Notfound : "

    .line 252
    .line 253
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public static testSystemUiCorrupted(Landroid/content/Context;)I
    .locals 9

    .line 1
    const-string p0, "com.android.systemui"

    .line 2
    .line 3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    const/4 v7, 0x0

    .line 8
    if-nez v6, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "PackageManager is null"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v7

    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v6, p0, v0, v1, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    xor-int/2addr v0, v8

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :try_start_1
    const-string v1, "com.android.systemui"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v0, v6

    .line 37
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v8, v7

    .line 44
    goto :goto_1

    .line 45
    :catch_1
    move-exception v0

    .line 46
    move v8, v7

    .line 47
    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v3, "testSystemUiCorrupted : Exception in checking enabled value: "

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    :try_start_2
    invoke-interface {v6, p0, v7}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    or-int/lit8 v8, v8, 0x2

    .line 67
    .line 68
    invoke-interface {v6, p0, v7, v7}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catch_2
    move-exception p0

    .line 73
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v2, "testSystemUiCorrupted : Exception in checking hidden value: "

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_2
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    const-string/jumbo v0, "testSystemUiCorrupted: "

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v8
.end method

.method public static toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    move v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x2

    .line 12
    :goto_0
    or-int/lit16 v1, v1, 0x1001

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    const/4 v2, 0x4

    .line 21
    :goto_1
    or-int/2addr v1, v2

    .line 22
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    move v2, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/16 v2, 0x8

    .line 29
    .line 30
    :goto_2
    or-int/2addr v1, v2

    .line 31
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    move v2, v0

    .line 36
    goto :goto_3

    .line 37
    :cond_4
    const/16 v2, 0x40

    .line 38
    .line 39
    :goto_3
    or-int/2addr v1, v2

    .line 40
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    move v2, v0

    .line 45
    goto :goto_4

    .line 46
    :cond_5
    const/16 v2, 0x80

    .line 47
    .line 48
    :goto_4
    or-int/2addr v1, v2

    .line 49
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    .line 50
    .line 51
    if-eqz v2, :cond_6

    .line 52
    .line 53
    move v2, v0

    .line 54
    goto :goto_5

    .line 55
    :cond_6
    const/16 v2, 0x100

    .line 56
    .line 57
    :goto_5
    or-int/2addr v1, v2

    .line 58
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    .line 59
    .line 60
    if-eqz v2, :cond_7

    .line 61
    .line 62
    move v2, v0

    .line 63
    goto :goto_6

    .line 64
    :cond_7
    const/16 v2, 0x200

    .line 65
    .line 66
    :goto_6
    or-int/2addr v1, v2

    .line 67
    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    .line 68
    .line 69
    if-eqz v2, :cond_8

    .line 70
    .line 71
    move v2, v0

    .line 72
    goto :goto_7

    .line 73
    :cond_8
    const/16 v2, 0x400

    .line 74
    .line 75
    :goto_7
    or-int/2addr v1, v2

    .line 76
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    .line 77
    .line 78
    if-eqz p0, :cond_9

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_9
    const/16 v0, 0x800

    .line 82
    .line 83
    :goto_8
    or-int p0, v1, v0

    .line 84
    .line 85
    return p0
.end method
