.class public final Lcom/android/server/locksettings/LockSettingsShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Landroid/os/IRemoteCallback;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNew:Ljava/lang/String;

.field public mOld:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 13
    .line 14
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingPid:I

    .line 15
    .line 16
    iput p4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingUid:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final checkCredential()Z
    .locals 6

    .line 1
    const-string v0, "Old password \'"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Profile uses unified challenge"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    .line 52
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    .line 62
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, "\' didn\'t match"

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    .line 96
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    :goto_0
    return v1

    .line 102
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string v0, "Request throttled"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return v3

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string v0, "Old password provided but user has no password"

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return v3

    .line 130
    :cond_4
    const/4 p0, 0x1

    .line 131
    return p0
.end method

.method public final getOldCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 53
    .line 54
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1, p1}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "New credential doesn\'t satisfy admin policies: "

    .line 35
    .line 36
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    .line 102
    .line 103
    .line 104
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 106
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "Error while check isMultifactorAuthEnforced"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "SecurityException : "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "ShellCommand"

    .line 130
    .line 131
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_2
    move p1, v2

    .line 135
    :goto_1
    if-eqz p1, :cond_3

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string p1, "New credential doesn\'t satisfy admin policies: password null does not meet multi-factor auth enforced"

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v2

    .line 147
    :cond_3
    const/4 p0, 0x1

    .line 148
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 13

    .line 1
    const-string v0, "Unknown command: "

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v1, -0x1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 20
    .line 21
    iput v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->parseArgs()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const-string/jumbo v3, "get-disabled"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v4, "help"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v5, "set-disabled"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v6, "set-resume-on-reboot-provider-package"

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    const/4 v8, 0x3

    .line 46
    const/4 v9, 0x1

    .line 47
    const/4 v10, 0x0

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sparse-switch v2, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    move v2, v8

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto/16 :goto_a

    .line 68
    .line 69
    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    move v2, v7

    .line 76
    goto :goto_1

    .line 77
    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    move v2, v10

    .line 84
    goto :goto_1

    .line 85
    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    move v2, v9

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    move v2, v1

    .line 94
    :goto_1
    if-eqz v2, :cond_2

    .line 95
    .line 96
    if-eq v2, v9, :cond_2

    .line 97
    .line 98
    if-eq v2, v7, :cond_2

    .line 99
    .line 100
    if-eq v2, v8, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "The device does not support lock screen - ignoring the command."

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/4 v11, 0x4

    .line 117
    const/4 v12, 0x5

    .line 118
    sparse-switch v2, :sswitch_data_1

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :sswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    move v2, v9

    .line 129
    goto :goto_3

    .line 130
    :sswitch_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    move v2, v12

    .line 137
    goto :goto_3

    .line 138
    :sswitch_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    move v2, v8

    .line 145
    goto :goto_3

    .line 146
    :sswitch_7
    const-string/jumbo v2, "require-strong-auth"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    move v2, v7

    .line 156
    goto :goto_3

    .line 157
    :sswitch_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_3

    .line 162
    .line 163
    move v2, v11

    .line 164
    goto :goto_3

    .line 165
    :sswitch_9
    const-string/jumbo v2, "remove-cache"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    move v2, v10

    .line 175
    goto :goto_3

    .line 176
    :cond_3
    :goto_2
    move v2, v1

    .line 177
    :goto_3
    if-eqz v2, :cond_10

    .line 178
    .line 179
    if-eq v2, v9, :cond_f

    .line 180
    .line 181
    if-eq v2, v7, :cond_e

    .line 182
    .line 183
    if-eq v2, v8, :cond_d

    .line 184
    .line 185
    if-eq v2, v11, :cond_c

    .line 186
    .line 187
    if-eq v2, v12, :cond_b

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->checkCredential()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_4

    .line 194
    .line 195
    return v1

    .line 196
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 197
    .line 198
    .line 199
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    const-string/jumbo v3, "reconnect-pf"

    .line 201
    .line 202
    .line 203
    const-string/jumbo v4, "lock"

    .line 204
    .line 205
    .line 206
    sparse-switch v2, :sswitch_data_2

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :sswitch_a
    :try_start_2
    const-string/jumbo v2, "set-pin"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_5

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :sswitch_b
    const-string/jumbo v2, "set-password"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_5

    .line 228
    .line 229
    move v7, v9

    .line 230
    goto :goto_5

    .line 231
    :sswitch_c
    const-string/jumbo v2, "clear"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_5

    .line 239
    .line 240
    move v7, v8

    .line 241
    goto :goto_5

    .line 242
    :sswitch_d
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_5

    .line 247
    .line 248
    move v7, v12

    .line 249
    goto :goto_5

    .line 250
    :sswitch_e
    const-string/jumbo v2, "fail"

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_5

    .line 258
    .line 259
    const/4 v7, 0x7

    .line 260
    goto :goto_5

    .line 261
    :sswitch_f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_5

    .line 266
    .line 267
    const/16 v7, 0x8

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :sswitch_10
    const-string/jumbo v2, "verify"

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_5

    .line 278
    .line 279
    move v7, v11

    .line 280
    goto :goto_5

    .line 281
    :sswitch_11
    const-string/jumbo v2, "unlock"

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_5

    .line 289
    .line 290
    const/4 v7, 0x6

    .line 291
    goto :goto_5

    .line 292
    :sswitch_12
    const-string/jumbo v2, "set-pattern"

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_5

    .line 300
    .line 301
    move v7, v10

    .line 302
    goto :goto_5

    .line 303
    :cond_5
    :goto_4
    move v7, v1

    .line 304
    :goto_5
    packed-switch v7, :pswitch_data_0

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_9

    .line 319
    .line 320
    :pswitch_0
    const-string v0, ""

    .line 321
    .line 322
    invoke-virtual {p0, v3, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_9

    .line 326
    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runFailToUnlock()V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_9

    .line 331
    .line 332
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runUnlock()V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_9

    .line 336
    .line 337
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_6

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const-string v2, "Please add lock type with --type option"

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_9

    .line 355
    .line 356
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {p0, v4, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_9

    .line 362
    .line 363
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const-string v2, "Lock credential verified successfully"

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_9

    .line 373
    .line 374
    :pswitch_5
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_7

    .line 383
    .line 384
    move v9, v10

    .line 385
    goto/16 :goto_9

    .line 386
    .line 387
    :cond_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 388
    .line 389
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 394
    .line 395
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    const-string v2, "Lock credential cleared"

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_9

    .line 408
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-nez v2, :cond_8

    .line 419
    .line 420
    :goto_6
    const/4 p0, 0x0

    .line 421
    :goto_7
    move v9, p0

    .line 422
    goto :goto_9

    .line 423
    :cond_8
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 424
    .line 425
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 430
    .line 431
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string v3, "Pin set to \'"

    .line 441
    .line 442
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 446
    .line 447
    const-string v4, "\'"

    .line 448
    .line 449
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 450
    .line 451
    .line 452
    :goto_8
    const/4 p0, 0x1

    .line 453
    goto :goto_7

    .line 454
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-nez v2, :cond_9

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_9
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 474
    .line 475
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v3, "Password set to \'"

    .line 485
    .line 486
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 490
    .line 491
    const-string v4, "\'"

    .line 492
    .line 493
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 494
    .line 495
    .line 496
    goto :goto_8

    .line 497
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPattern()Z

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    :goto_9
    if-eqz v9, :cond_a

    .line 502
    .line 503
    move v1, v10

    .line 504
    :cond_a
    return v1

    .line 505
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 506
    .line 507
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 512
    .line 513
    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 514
    .line 515
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v4, "Lock screen disabled set to "

    .line 525
    .line 526
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    return v10

    .line 540
    :cond_c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 541
    .line 542
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 543
    .line 544
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 553
    .line 554
    .line 555
    return v10

    .line 556
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->onHelp()V

    .line 557
    .line 558
    .line 559
    return v10

    .line 560
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runRequireStrongAuth()V

    .line 561
    .line 562
    .line 563
    return v10

    .line 564
    :cond_f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 565
    .line 566
    const-string v2, "Setting persist.sys.resume_on_reboot_provider_package to "

    .line 567
    .line 568
    const-string v3, "ShellCommand"

    .line 569
    .line 570
    invoke-static {v2, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    .line 574
    .line 575
    iget v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingPid:I

    .line 576
    .line 577
    iget v5, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallingUid:I

    .line 578
    .line 579
    const-string v6, "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"

    .line 580
    .line 581
    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 582
    .line 583
    .line 584
    const-string/jumbo v2, "persist.sys.resume_on_reboot_provider_package"

    .line 585
    .line 586
    .line 587
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    return v10

    .line 591
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 592
    .line 593
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 594
    .line 595
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->removeCachedUnifiedChallenge(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    const-string v3, "Password cached removed for user "

    .line 605
    .line 606
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 610
    .line 611
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    .line 620
    .line 621
    return v10

    .line 622
    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    const-string v3, "Error while executing command: "

    .line 627
    .line 628
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 636
    .line 637
    .line 638
    move-result-object p0

    .line 639
    invoke-virtual {v0, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 640
    .line 641
    .line 642
    return v1

    .line 643
    :sswitch_data_0
    .sparse-switch
        -0x57d6f0ed -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0x47ccf87 -> :sswitch_1
        0x3f569a99 -> :sswitch_0
    .end sparse-switch

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :sswitch_data_1
    .sparse-switch
        -0x74adb707 -> :sswitch_9
        -0x57d6f0ed -> :sswitch_8
        -0x33c6cd4a -> :sswitch_7
        0x30cf41 -> :sswitch_6
        0x47ccf87 -> :sswitch_5
        0x3f569a99 -> :sswitch_4
    .end sparse-switch

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    :sswitch_data_2
    .sparse-switch
        -0x79d9f6db -> :sswitch_12
        -0x321820bc -> :sswitch_11
        -0x30df7787 -> :sswitch_10
        -0x2e637d4 -> :sswitch_f
        0x2fd71e -> :sswitch_e
        0x32c52b -> :sswitch_d
        0x5a5b64d -> :sswitch_c
        0x3ce04fa6 -> :sswitch_b
        0x763ee1aa -> :sswitch_a
    .end sparse-switch

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string/jumbo v1, "lockSettings service commands:"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "NOTE: when a secure lock screen is set, most commands require the"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "--old <CREDENTIAL> option."

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "  help"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "    Prints this help text."

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "  get-disabled [--user USER_ID]"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "    Prints true if the lock screen is completely disabled, i.e. set to None."

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "    Otherwise prints false."

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "  set-disabled [--user USER_ID] <true|false>"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "    Sets whether the lock screen is disabled. If the lock screen is secure, this"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "    has no immediate effect. I.e. this can only change between Swipe and None."

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "  set-pattern [--old <CREDENTIAL>] [--user USER_ID] <PATTERN>"

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "    Sets a secure lock screen that uses the given PATTERN. PATTERN is a series"

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "    of digits 1-9 that identify the cells of the pattern."

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "  set-pin [--old <CREDENTIAL>] [--user USER_ID] <PIN>"

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v1, "    Sets a secure lock screen that uses the given PIN."

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "  set-password [--old <CREDENTIAL>] [--user USER_ID] <PASSWORD>"

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "    Sets a secure lock screen that uses the given PASSWORD."

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v1, "  clear [--old <CREDENTIAL>] [--user USER_ID]"

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v1, "    Clears the lock credential."

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v1, "  verify [--old <CREDENTIAL>] [--user USER_ID]"

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v1, "    Verifies the lock credential."

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v1, "  remove-cache [--user USER_ID]"

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v1, "    Removes cached unified challenge for the managed profile."

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v1, "  set-resume-on-reboot-provider-package <package_name>"

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v1, "    Sets the package name for server based resume on reboot service provider."

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "  require-strong-auth [--user USER_ID] <reason>"

    .line 175
    .line 176
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "    Requires strong authentication. The current supported reasons:"

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v1, "    STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN."

    .line 185
    .line 186
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    if-eqz p0, :cond_0

    .line 198
    .line 199
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    :cond_0
    :goto_0
    throw v0
.end method

.method public final parseArgs()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const-string v1, "--old"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v1, "--user"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 39
    .line 40
    const/4 v1, -0x2

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "--type"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v1, "Unknown option: "

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 89
    .line 90
    return-void
.end method

.method public final runFailToUnlock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "finger"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v1, "face"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Unknown unlock type: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string/jumbo v0, "fail"

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final runRequireStrongAuth()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "Unsupported reason: "

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Require strong auth for USER_ID "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, " because of "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final runSetPattern()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->isNewCredentialSufficient(Lcom/android/internal/widget/LockscreenCredential;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOldCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Pattern set to \'"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "\'"

    .line 48
    .line 49
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final runUnlock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "finger"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v1, "face"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Unknown unlock type: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string/jumbo v0, "unlock"

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mType:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsShellCommand;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p2, "Not supported command: "

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string/jumbo v0, "ro.product_ship"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "false"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string/jumbo v1, "true"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "Not supported ship build"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "command"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v1, "type"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    .line 66
    .line 67
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p2, "Failed command: "

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method
