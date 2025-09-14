.class public final Lcom/android/server/pm/VerifyingSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDataLoaderType:I

.field public mErrorMessage:Ljava/lang/String;

.field public final mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public final mIsStaged:Z

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mUser:Landroid/os/UserHandle;

.field public final mUserActionRequired:Z

.field public final mUserActionRequiredType:I

.field public final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field public mWaitForEnableRollbackToComplete:Z

.field public mWaitForIntegrityVerificationToComplete:Z

.field public mWaitForVerificationToComplete:Z

.field public final sessionFlags:I


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageSessionVerifier$1;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/pm/VerifyingSession;->sessionFlags:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p12, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/pm/OriginInfo;

    .line 20
    .line 21
    invoke-direct {p1, p2, v1, v0, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lcom/android/server/pm/OriginInfo;

    .line 28
    .line 29
    invoke-direct {p1, v2, v1, v0, p3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 33
    .line 34
    :goto_0
    iput-object p4, p0, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 35
    .line 36
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 37
    .line 38
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 39
    .line 40
    iput-object p6, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 41
    .line 42
    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p1, Lcom/android/server/pm/VerificationInfo;

    .line 47
    .line 48
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 49
    .line 50
    iget-object p3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 51
    .line 52
    iget p4, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 53
    .line 54
    invoke-direct {p1, p2, p3, p4, p7}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 58
    .line 59
    iput-object p8, p0, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 60
    .line 61
    iget-wide p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 62
    .line 63
    iput-wide p1, p0, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    .line 64
    .line 65
    iget-object p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move p1, v0

    .line 75
    :goto_1
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 76
    .line 77
    iput p9, p0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 78
    .line 79
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 80
    .line 81
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->sessionFlags:I

    .line 82
    .line 83
    iput-object p10, p0, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 84
    .line 85
    iput-boolean p11, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    .line 86
    .line 87
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 88
    .line 89
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    .line 90
    .line 91
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 92
    .line 93
    const/4 p2, 0x2

    .line 94
    if-ne p1, p2, :cond_2

    .line 95
    .line 96
    move v0, v1

    .line 97
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    .line 98
    .line 99
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 100
    .line 101
    iput-boolean p1, p0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    .line 102
    .line 103
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 104
    .line 105
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    .line 106
    .line 107
    return-void
.end method

.method public static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x0

    .line 7
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 14
    .line 15
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object p0, v2

    .line 35
    :goto_2
    if-nez p0, :cond_3

    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_3
    new-instance p1, Landroid/content/ComponentName;

    .line 39
    .line 40
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method


# virtual methods
.method public final getDefaultVerificationResponse()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const-string v2, "ensure_verify_apps"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v0, "verifier_default_response"

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final handleReturnCode()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    .line 4
    .line 5
    if-nez v1, :cond_6

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForIntegrityVerificationToComplete:Z

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const-string v3, "Observer no longer exists."

    .line 21
    .line 22
    const-string v4, "PackageManager"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    iget-object v6, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    .line 28
    .line 29
    check-cast v6, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v6, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    .line 35
    .line 36
    check-cast v6, Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget-object v7, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eq v6, v7, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v6, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    .line 52
    .line 53
    check-cast v6, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lcom/android/server/pm/VerifyingSession;

    .line 70
    .line 71
    iget v8, v7, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 72
    .line 73
    if-eq v8, v2, :cond_2

    .line 74
    .line 75
    iget-object v6, v7, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v8, v2

    .line 79
    move-object v6, v5

    .line 80
    :goto_0
    :try_start_0
    iget-object v1, v1, Lcom/android/server/pm/MultiPackageVerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 81
    .line 82
    new-instance v7, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v5, v8, v6, v7}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 96
    .line 97
    iget v6, v0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 98
    .line 99
    iget-object v7, v0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v8, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v5, v6, v7, v8}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_1
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_1
    iget v1, v0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 114
    .line 115
    if-eq v1, v2, :cond_6

    .line 116
    .line 117
    iget-object v3, v0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 118
    .line 119
    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 120
    .line 121
    iget v4, v0, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 122
    .line 123
    and-int/lit16 v4, v4, 0x800

    .line 124
    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    :goto_2
    move/from16 v32, v2

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const/4 v2, 0x0

    .line 131
    goto :goto_2

    .line 132
    :goto_3
    iget-boolean v2, v0, Lcom/android/server/pm/VerifyingSession;->mIsInherit:Z

    .line 133
    .line 134
    move/from16 v35, v2

    .line 135
    .line 136
    const/16 v36, 0x0

    .line 137
    .line 138
    const/16 v9, 0x20c

    .line 139
    .line 140
    iget v10, v0, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 141
    .line 142
    const/4 v11, 0x0

    .line 143
    const/4 v12, -0x1

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    const/4 v15, 0x0

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    const-wide/16 v19, 0x0

    .line 152
    .line 153
    const-wide/16 v21, 0x0

    .line 154
    .line 155
    const/16 v23, 0x0

    .line 156
    .line 157
    const/16 v24, 0x0

    .line 158
    .line 159
    const-wide/16 v25, 0x0

    .line 160
    .line 161
    const/16 v27, 0x0

    .line 162
    .line 163
    const/16 v29, -0x1

    .line 164
    .line 165
    iget v2, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 166
    .line 167
    move/from16 v30, v2

    .line 168
    .line 169
    iget v2, v0, Lcom/android/server/pm/VerifyingSession;->mUserActionRequiredType:I

    .line 170
    .line 171
    move/from16 v31, v2

    .line 172
    .line 173
    const/16 v33, 0x0

    .line 174
    .line 175
    const/16 v34, 0x0

    .line 176
    .line 177
    const/16 v37, 0x0

    .line 178
    .line 179
    iget-boolean v0, v0, Lcom/android/server/pm/VerifyingSession;->mIsStaged:Z

    .line 180
    .line 181
    move/from16 v38, v0

    .line 182
    .line 183
    move/from16 v17, v1

    .line 184
    .line 185
    move/from16 v28, v3

    .line 186
    .line 187
    invoke-static/range {v9 .. v38}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZ)V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_4
    return-void
.end method

.method public final handleStartVerify()V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 12
    .line 13
    iget v4, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 14
    .line 15
    iget-object v5, v1, Lcom/android/server/pm/VerifyingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 22
    .line 23
    iget-wide v3, v1, Lcom/android/server/pm/VerifyingSession;->mRequiredInstalledVersionCode:J

    .line 24
    .line 25
    iget v5, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eq v0, v3, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 53
    .line 54
    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    .line 55
    .line 56
    if-nez v0, :cond_38

    .line 57
    .line 58
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallReason:I

    .line 65
    .line 66
    const/4 v5, 0x5

    .line 67
    if-ne v0, v5, :cond_1

    .line 68
    .line 69
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 72
    .line 73
    const-string v5, "android"

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v0, v3

    .line 84
    :goto_0
    iget v5, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 85
    .line 86
    const/high16 v6, 0x20000

    .line 87
    .line 88
    and-int/2addr v6, v5

    .line 89
    const-wide/32 v11, 0x40000

    .line 90
    .line 91
    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    goto/16 :goto_26

    .line 95
    .line 96
    :cond_2
    const/high16 v6, 0x8000000

    .line 97
    .line 98
    and-int/2addr v5, v6

    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    goto/16 :goto_26

    .line 102
    .line 103
    :cond_3
    if-eqz v0, :cond_36

    .line 104
    .line 105
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 106
    .line 107
    iget v5, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 108
    .line 109
    add-int/lit8 v6, v5, 0x1

    .line 110
    .line 111
    iput v6, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 112
    .line 113
    new-instance v6, Lcom/android/server/pm/PackageVerificationState;

    .line 114
    .line 115
    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerifyingSession;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 121
    .line 122
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    iget-object v13, v1, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 130
    .line 131
    if-eqz v13, :cond_4

    .line 132
    .line 133
    const-string v14, "PrePackageInstaller"

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    iget v0, v13, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 144
    .line 145
    const/16 v13, 0x3e8

    .line 146
    .line 147
    if-ne v0, v13, :cond_4

    .line 148
    .line 149
    iput-boolean v3, v6, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    new-instance v15, Landroid/content/Intent;

    .line 153
    .line 154
    const-string v0, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    .line 155
    .line 156
    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Ljava/io/File;

    .line 160
    .line 161
    iget-object v13, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 162
    .line 163
    iget-object v13, v13, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 164
    .line 165
    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v13, "application/vnd.android.package-archive"

    .line 173
    .line 174
    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const v0, 0x50000001

    .line 178
    .line 179
    .line 180
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    const-string v0, "android.content.pm.extra.VERIFICATION_ID"

    .line 184
    .line 185
    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    iget-object v0, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 189
    .line 190
    const-string v13, "android.intent.extra.PACKAGE_NAME"

    .line 191
    .line 192
    invoke-virtual {v15, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    const-string v0, "android.intent.extra.VERSION_CODE"

    .line 196
    .line 197
    iget v13, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 198
    .line 199
    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    const-string v0, "android.intent.extra.LONG_VERSION_CODE"

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    .line 205
    .line 206
    .line 207
    move-result-wide v13

    .line 208
    invoke-virtual {v15, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v15}, Lcom/android/server/pm/VerifyingSession;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 212
    .line 213
    .line 214
    const-string v0, "android"

    .line 215
    .line 216
    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget-object v13, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 224
    .line 225
    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    sget-object v16, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 230
    .line 231
    .line 232
    move-result-object v19

    .line 233
    new-instance v0, Lcom/android/server/pm/VerifyingSession$1;

    .line 234
    .line 235
    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/VerifyingSession$1;-><init>(Lcom/android/server/pm/VerifyingSession;I)V

    .line 236
    .line 237
    .line 238
    const/16 v21, 0x0

    .line 239
    .line 240
    const/16 v22, 0x0

    .line 241
    .line 242
    const/16 v17, 0x0

    .line 243
    .line 244
    const/16 v18, -0x1

    .line 245
    .line 246
    const/16 v23, 0x0

    .line 247
    .line 248
    const/16 v24, 0x0

    .line 249
    .line 250
    move-object/from16 v20, v0

    .line 251
    .line 252
    invoke-virtual/range {v14 .. v24}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "integrity_verification"

    .line 256
    .line 257
    invoke-static {v11, v12, v0, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    iput-boolean v3, v1, Lcom/android/server/pm/VerifyingSession;->mWaitForIntegrityVerificationToComplete:Z

    .line 261
    .line 262
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 263
    .line 264
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 265
    .line 266
    if-ne v0, v13, :cond_5

    .line 267
    .line 268
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 269
    .line 270
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :cond_5
    iget-boolean v13, v2, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    .line 281
    .line 282
    if-eqz v13, :cond_6

    .line 283
    .line 284
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 285
    .line 286
    :cond_6
    move-object v15, v0

    .line 287
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    .line 292
    .line 293
    iget-object v13, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 294
    .line 295
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    .line 303
    .line 304
    iget v13, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 305
    .line 306
    and-int/lit8 v16, v13, 0x20

    .line 307
    .line 308
    const/high16 v17, 0x80000

    .line 309
    .line 310
    if-eqz v16, :cond_9

    .line 311
    .line 312
    and-int v13, v13, v17

    .line 313
    .line 314
    if-nez v13, :cond_9

    .line 315
    .line 316
    const-string v13, "debug.pm.adb_verifier_override_packages"

    .line 317
    .line 318
    const-string v11, ""

    .line 319
    .line 320
    invoke-static {v13, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v12

    .line 328
    if-nez v12, :cond_9

    .line 329
    .line 330
    const-string v12, ";"

    .line 331
    .line 332
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    new-instance v12, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    array-length v13, v11

    .line 342
    const/4 v4, 0x0

    .line 343
    :goto_2
    if-ge v4, v13, :cond_8

    .line 344
    .line 345
    aget-object v9, v11, v4

    .line 346
    .line 347
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-nez v10, :cond_7

    .line 352
    .line 353
    iget-object v10, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 354
    .line 355
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    invoke-interface {v10, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    if-eqz v10, :cond_7

    .line 364
    .line 365
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-lez v4, :cond_9

    .line 376
    .line 377
    invoke-virtual {v1, v2, v14, v3}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_9

    .line 382
    .line 383
    move v4, v3

    .line 384
    goto :goto_3

    .line 385
    :cond_9
    move-object v12, v0

    .line 386
    const/4 v4, 0x0

    .line 387
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 388
    .line 389
    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    .line 390
    .line 391
    if-nez v0, :cond_32

    .line 392
    .line 393
    iget-object v9, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 394
    .line 395
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 396
    .line 397
    if-nez v0, :cond_a

    .line 398
    .line 399
    const/4 v11, -0x1

    .line 400
    goto :goto_4

    .line 401
    :cond_a
    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 402
    .line 403
    move v11, v0

    .line 404
    :goto_4
    iget v13, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 405
    .line 406
    and-int v0, v13, v17

    .line 407
    .line 408
    if-eqz v0, :cond_b

    .line 409
    .line 410
    move v10, v3

    .line 411
    goto :goto_5

    .line 412
    :cond_b
    const/4 v10, 0x0

    .line 413
    :goto_5
    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 414
    .line 415
    sget-object v8, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 416
    .line 417
    if-nez v8, :cond_c

    .line 418
    .line 419
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 420
    .line 421
    invoke-direct {v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 422
    .line 423
    .line 424
    sput-object v8, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 425
    .line 426
    :cond_c
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 427
    .line 428
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    const-string/jumbo v8, "mum_container_policy"

    .line 433
    .line 434
    .line 435
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-static {v8}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 444
    .line 445
    invoke-direct {v3, v0, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 446
    .line 447
    .line 448
    invoke-interface {v8, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    const-string v7, "PackageManager"

    .line 461
    .line 462
    if-eqz v8, :cond_d

    .line 463
    .line 464
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    check-cast v8, Ljava/lang/String;

    .line 469
    .line 470
    move-object/from16 v16, v3

    .line 471
    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    .line 476
    .line 477
    move/from16 v28, v4

    .line 478
    .line 479
    :try_start_2
    const-string v4, "isVerificationEnabled :: approvedInstaller : "

    .line 480
    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-object/from16 v3, v16

    .line 495
    .line 496
    move/from16 v4, v28

    .line 497
    .line 498
    goto :goto_6

    .line 499
    :catch_0
    move-exception v0

    .line 500
    goto :goto_9

    .line 501
    :catch_1
    move-exception v0

    .line 502
    move/from16 v28, v4

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_d
    move/from16 v28, v4

    .line 506
    .line 507
    const-string v3, ".*"

    .line 508
    .line 509
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_e

    .line 514
    .line 515
    const-string v0, "isVerificationEnabled :: installer policy contains *."

    .line 516
    .line 517
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    :goto_7
    const/16 v3, 0x20

    .line 521
    .line 522
    goto :goto_a

    .line 523
    :cond_e
    const-string v0, "isVerificationEnabled :: installer policy exits."

    .line 524
    .line 525
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 526
    .line 527
    .line 528
    :goto_8
    const/4 v0, 0x0

    .line 529
    goto :goto_b

    .line 530
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    .line 532
    .line 533
    goto :goto_7

    .line 534
    :goto_a
    and-int/lit8 v0, v13, 0x20

    .line 535
    .line 536
    if-eqz v0, :cond_f

    .line 537
    .line 538
    invoke-virtual {v1, v2, v14, v10}, Lcom/android/server/pm/VerifyingSession;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    goto :goto_b

    .line 543
    :cond_f
    if-eqz v10, :cond_10

    .line 544
    .line 545
    goto :goto_8

    .line 546
    :cond_10
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 547
    .line 548
    and-int/lit16 v0, v0, 0x800

    .line 549
    .line 550
    if-eqz v0, :cond_12

    .line 551
    .line 552
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 553
    .line 554
    if-eqz v0, :cond_12

    .line 555
    .line 556
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 557
    .line 558
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    :catch_2
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    if-eqz v4, :cond_12

    .line 567
    .line 568
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    check-cast v4, Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    if-eqz v7, :cond_11

    .line 579
    .line 580
    :try_start_3
    iget-object v7, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 581
    .line 582
    const-class v8, Landroid/app/AppOpsManager;

    .line 583
    .line 584
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 585
    .line 586
    invoke-interface {v7, v8}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    check-cast v7, Landroid/app/AppOpsManager;

    .line 591
    .line 592
    invoke-virtual {v7, v11, v4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 593
    .line 594
    .line 595
    goto :goto_8

    .line 596
    :cond_12
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->sessionFlags:I

    .line 597
    .line 598
    const/high16 v3, 0x2000000

    .line 599
    .line 600
    and-int/2addr v0, v3

    .line 601
    if-eqz v0, :cond_13

    .line 602
    .line 603
    goto :goto_8

    .line 604
    :cond_13
    const/4 v0, 0x1

    .line 605
    :goto_b
    if-nez v0, :cond_14

    .line 606
    .line 607
    move v9, v5

    .line 608
    const/4 v3, 0x1

    .line 609
    goto/16 :goto_24

    .line 610
    .line 611
    :cond_14
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 612
    .line 613
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    const/4 v4, 0x1

    .line 622
    sub-int/2addr v3, v4

    .line 623
    :goto_c
    if-ltz v3, :cond_16

    .line 624
    .line 625
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    check-cast v4, Ljava/lang/String;

    .line 630
    .line 631
    invoke-interface {v0, v4, v15}, Lcom/android/server/pm/Computer;->isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    if-nez v4, :cond_15

    .line 636
    .line 637
    const-string v4, "PackageManager"

    .line 638
    .line 639
    new-instance v7, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v8, "Required verifier: "

    .line 642
    .line 643
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    check-cast v8, Ljava/lang/String;

    .line 651
    .line 652
    const-string v9, " is disabled"

    .line 653
    .line 654
    invoke-static {v7, v8, v9, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-interface {v12, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    :cond_15
    add-int/lit8 v3, v3, -0x1

    .line 661
    .line 662
    goto :goto_c

    .line 663
    :cond_16
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    const-wide/32 v7, 0x10000000

    .line 672
    .line 673
    .line 674
    if-eqz v4, :cond_17

    .line 675
    .line 676
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    check-cast v4, Ljava/lang/String;

    .line 681
    .line 682
    invoke-interface {v0, v4, v7, v8, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    iget-object v7, v6, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 687
    .line 688
    const/4 v8, 0x1

    .line 689
    invoke-virtual {v7, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 690
    .line 691
    .line 692
    iget-object v7, v6, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 693
    .line 694
    invoke-virtual {v7, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 695
    .line 696
    .line 697
    goto :goto_d

    .line 698
    :cond_17
    const-string v3, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 699
    .line 700
    const/high16 v4, 0x10000000

    .line 701
    .line 702
    invoke-static {v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    new-instance v9, Ljava/io/File;

    .line 707
    .line 708
    iget-object v10, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 709
    .line 710
    iget-object v10, v10, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 711
    .line 712
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 716
    .line 717
    .line 718
    move-result-object v9

    .line 719
    const-string v10, "application/vnd.android.package-archive"

    .line 720
    .line 721
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    .line 723
    .line 724
    const/4 v9, 0x1

    .line 725
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 726
    .line 727
    .line 728
    iget-object v9, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 729
    .line 730
    const-string v19, "application/vnd.android.package-archive"

    .line 731
    .line 732
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    new-instance v10, Landroid/content/pm/ParceledListSlice;

    .line 736
    .line 737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 738
    .line 739
    .line 740
    move-result v23

    .line 741
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 742
    .line 743
    const-wide/16 v20, 0x0

    .line 744
    .line 745
    const/16 v24, -0x1

    .line 746
    .line 747
    const/16 v25, 0x0

    .line 748
    .line 749
    move-object/from16 v16, v9

    .line 750
    .line 751
    move-object/from16 v17, v0

    .line 752
    .line 753
    move-object/from16 v18, v3

    .line 754
    .line 755
    move/from16 v22, v14

    .line 756
    .line 757
    invoke-virtual/range {v16 .. v25}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 758
    .line 759
    .line 760
    move-result-object v9

    .line 761
    invoke-direct {v10, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 762
    .line 763
    .line 764
    const-string v9, "android.content.pm.extra.VERIFICATION_ID"

    .line 765
    .line 766
    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    .line 768
    .line 769
    const-string v9, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    .line 770
    .line 771
    iget v11, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 772
    .line 773
    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    .line 775
    .line 776
    const-string v9, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    .line 777
    .line 778
    iget-object v11, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 779
    .line 780
    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    .line 782
    .line 783
    const-string v9, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    .line 784
    .line 785
    iget v11, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 786
    .line 787
    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    .line 789
    .line 790
    const-string v9, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    .line 791
    .line 792
    move v11, v5

    .line 793
    invoke-virtual {v2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    .line 794
    .line 795
    .line 796
    move-result-wide v4

    .line 797
    invoke-virtual {v3, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 798
    .line 799
    .line 800
    iget-object v4, v1, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 801
    .line 802
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    iget-object v5, v1, Lcom/android/server/pm/VerifyingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 807
    .line 808
    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 813
    .line 814
    .line 815
    move-result v9

    .line 816
    if-eqz v9, :cond_18

    .line 817
    .line 818
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    const-string v5, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    .line 823
    .line 824
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    .line 826
    .line 827
    goto :goto_e

    .line 828
    :cond_18
    const/4 v4, 0x0

    .line 829
    :goto_e
    const-string v5, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 830
    .line 831
    iget v9, v1, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 832
    .line 833
    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    .line 835
    .line 836
    const-string v5, "android.content.pm.extra.SESSION_ID"

    .line 837
    .line 838
    iget v9, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 839
    .line 840
    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    .line 842
    .line 843
    const-string v5, "android.content.pm.extra.USER_ACTION_REQUIRED"

    .line 844
    .line 845
    iget-boolean v9, v1, Lcom/android/server/pm/VerifyingSession;->mUserActionRequired:Z

    .line 846
    .line 847
    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v3}, Lcom/android/server/pm/VerifyingSession;->populateInstallerExtras(Landroid/content/Intent;)V

    .line 851
    .line 852
    .line 853
    iget v5, v1, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 854
    .line 855
    const/4 v9, 0x2

    .line 856
    if-ne v5, v9, :cond_19

    .line 857
    .line 858
    iget-object v5, v1, Lcom/android/server/pm/VerifyingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 859
    .line 860
    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    .line 861
    .line 862
    .line 863
    move-result v5

    .line 864
    const/4 v9, 0x4

    .line 865
    if-ne v5, v9, :cond_19

    .line 866
    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    .line 868
    .line 869
    .line 870
    move-result v5

    .line 871
    const/4 v9, 0x1

    .line 872
    if-ne v5, v9, :cond_19

    .line 873
    .line 874
    const/4 v5, 0x1

    .line 875
    goto :goto_f

    .line 876
    :cond_19
    const/4 v5, 0x0

    .line 877
    :goto_f
    iget-object v9, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 878
    .line 879
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 880
    .line 881
    if-eqz v5, :cond_1a

    .line 882
    .line 883
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 884
    .line 885
    .line 886
    move-result-object v9

    .line 887
    const-string/jumbo v7, "streaming_verifier_timeout"

    .line 888
    .line 889
    .line 890
    move v8, v14

    .line 891
    const-wide/16 v13, 0xbb8

    .line 892
    .line 893
    move/from16 v30, v11

    .line 894
    .line 895
    move-object/from16 v29, v12

    .line 896
    .line 897
    invoke-static {v9, v7, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 898
    .line 899
    .line 900
    move-result-wide v11

    .line 901
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 902
    .line 903
    .line 904
    move-result-wide v11

    .line 905
    goto :goto_10

    .line 906
    :cond_1a
    move/from16 v30, v11

    .line 907
    .line 908
    move-object/from16 v29, v12

    .line 909
    .line 910
    move v8, v14

    .line 911
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 912
    .line 913
    .line 914
    move-result-object v7

    .line 915
    const-string/jumbo v9, "verifier_timeout"

    .line 916
    .line 917
    .line 918
    const-wide/16 v11, 0x2710

    .line 919
    .line 920
    invoke-static {v7, v9, v11, v12}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 921
    .line 922
    .line 923
    move-result-wide v13

    .line 924
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 925
    .line 926
    .line 927
    move-result-wide v13

    .line 928
    move-wide v11, v13

    .line 929
    :goto_10
    iget-object v7, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 930
    .line 931
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 932
    .line 933
    if-eqz v5, :cond_1b

    .line 934
    .line 935
    move-object/from16 v31, v4

    .line 936
    .line 937
    move/from16 v32, v5

    .line 938
    .line 939
    const-wide/16 v13, 0x0

    .line 940
    .line 941
    goto :goto_11

    .line 942
    :cond_1b
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 943
    .line 944
    .line 945
    move-result-object v7

    .line 946
    const-string/jumbo v9, "verifier_timeout_samsung"

    .line 947
    .line 948
    .line 949
    move-object/from16 v31, v4

    .line 950
    .line 951
    move/from16 v32, v5

    .line 952
    .line 953
    const-wide/16 v13, 0x0

    .line 954
    .line 955
    invoke-static {v7, v9, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 956
    .line 957
    .line 958
    move-result-wide v4

    .line 959
    const-wide/16 v13, 0x7530

    .line 960
    .line 961
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 962
    .line 963
    .line 964
    move-result-wide v13

    .line 965
    :goto_11
    cmp-long v4, v13, v11

    .line 966
    .line 967
    if-lez v4, :cond_1c

    .line 968
    .line 969
    const-string v4, "PackageManager"

    .line 970
    .line 971
    new-instance v5, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    const-string v7, "Samsung verification timeout applied. Set verification timeout to "

    .line 974
    .line 975
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .line 987
    .line 988
    move-wide v11, v13

    .line 989
    :cond_1c
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    iget-object v5, v2, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 994
    .line 995
    if-eqz v5, :cond_1d

    .line 996
    .line 997
    array-length v7, v5

    .line 998
    if-nez v7, :cond_1e

    .line 999
    .line 1000
    :cond_1d
    move-object/from16 v34, v0

    .line 1001
    .line 1002
    move-object/from16 v36, v3

    .line 1003
    .line 1004
    move-object/from16 v33, v10

    .line 1005
    .line 1006
    move-object/from16 v35, v15

    .line 1007
    .line 1008
    const/4 v3, -0x1

    .line 1009
    const/4 v4, 0x0

    .line 1010
    goto/16 :goto_19

    .line 1011
    .line 1012
    :cond_1e
    array-length v5, v5

    .line 1013
    new-instance v7, Ljava/util/ArrayList;

    .line 1014
    .line 1015
    add-int/lit8 v9, v5, 0x1

    .line 1016
    .line 1017
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1018
    .line 1019
    .line 1020
    const/4 v9, 0x0

    .line 1021
    :goto_12
    if-ge v9, v5, :cond_24

    .line 1022
    .line 1023
    iget-object v13, v2, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 1024
    .line 1025
    aget-object v13, v13, v9

    .line 1026
    .line 1027
    iget-object v14, v13, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    .line 1028
    .line 1029
    invoke-static {v14, v4}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v14

    .line 1033
    if-nez v14, :cond_1f

    .line 1034
    .line 1035
    move-object/from16 v34, v0

    .line 1036
    .line 1037
    move-object/from16 v36, v3

    .line 1038
    .line 1039
    move-object/from16 v16, v4

    .line 1040
    .line 1041
    move/from16 v17, v5

    .line 1042
    .line 1043
    move-object/from16 v33, v10

    .line 1044
    .line 1045
    move-object/from16 v35, v15

    .line 1046
    .line 1047
    const/4 v3, -0x1

    .line 1048
    const/4 v4, 0x0

    .line 1049
    goto/16 :goto_17

    .line 1050
    .line 1051
    :cond_1f
    move-object/from16 v16, v4

    .line 1052
    .line 1053
    iget-object v4, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1054
    .line 1055
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1056
    .line 1057
    move/from16 v17, v5

    .line 1058
    .line 1059
    const-string v5, "Verifier package "

    .line 1060
    .line 1061
    move-object/from16 v33, v10

    .line 1062
    .line 1063
    const-string v10, "Verifier package "

    .line 1064
    .line 1065
    move-object/from16 v34, v0

    .line 1066
    .line 1067
    iget-object v0, v4, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1068
    .line 1069
    move-object/from16 v35, v15

    .line 1070
    .line 1071
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1072
    .line 1073
    monitor-enter v15

    .line 1074
    :try_start_4
    iget-object v0, v4, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1075
    .line 1076
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1077
    .line 1078
    iget-object v4, v13, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    .line 1079
    .line 1080
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 1081
    .line 1082
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1087
    .line 1088
    if-nez v0, :cond_20

    .line 1089
    .line 1090
    monitor-exit v15

    .line 1091
    move-object/from16 v36, v3

    .line 1092
    .line 1093
    :goto_13
    const/4 v0, -0x1

    .line 1094
    const/4 v3, -0x1

    .line 1095
    const/4 v4, 0x0

    .line 1096
    goto :goto_16

    .line 1097
    :catchall_0
    move-exception v0

    .line 1098
    goto/16 :goto_18

    .line 1099
    .line 1100
    :cond_20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v4

    .line 1104
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    array-length v4, v4

    .line 1109
    move-object/from16 v36, v3

    .line 1110
    .line 1111
    const/4 v3, 0x1

    .line 1112
    if-eq v4, v3, :cond_21

    .line 1113
    .line 1114
    const-string v0, "PackageManager"

    .line 1115
    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    iget-object v4, v13, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    .line 1122
    .line 1123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    const-string v4, " has more than one signature; ignoring"

    .line 1127
    .line 1128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .line 1137
    .line 1138
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1139
    goto :goto_13

    .line 1140
    :cond_21
    :try_start_5
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v3

    .line 1144
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1148
    const/4 v4, 0x0

    .line 1149
    :try_start_6
    aget-object v3, v3, v4

    .line 1150
    .line 1151
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v3

    .line 1155
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1159
    :try_start_7
    iget-object v10, v13, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    .line 1160
    .line 1161
    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    .line 1162
    .line 1163
    .line 1164
    move-result-object v10

    .line 1165
    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v3

    .line 1169
    if-nez v3, :cond_22

    .line 1170
    .line 1171
    const-string v0, "PackageManager"

    .line 1172
    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    iget-object v5, v13, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    .line 1179
    .line 1180
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    const-string v5, " does not have the expected public key; ignoring"

    .line 1184
    .line 1185
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v3

    .line 1192
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .line 1194
    .line 1195
    monitor-exit v15

    .line 1196
    :goto_14
    const/4 v0, -0x1

    .line 1197
    :goto_15
    const/4 v3, -0x1

    .line 1198
    goto :goto_16

    .line 1199
    :cond_22
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    monitor-exit v15

    .line 1204
    goto :goto_15

    .line 1205
    :catch_3
    const/4 v4, 0x0

    .line 1206
    :catch_4
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1207
    goto :goto_14

    .line 1208
    :goto_16
    if-ne v0, v3, :cond_23

    .line 1209
    .line 1210
    goto :goto_17

    .line 1211
    :cond_23
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    iget-object v5, v6, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 1215
    .line 1216
    const/4 v10, 0x1

    .line 1217
    invoke-virtual {v5, v0, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1218
    .line 1219
    .line 1220
    :goto_17
    add-int/lit8 v9, v9, 0x1

    .line 1221
    .line 1222
    move-object/from16 v4, v16

    .line 1223
    .line 1224
    move/from16 v5, v17

    .line 1225
    .line 1226
    move-object/from16 v10, v33

    .line 1227
    .line 1228
    move-object/from16 v0, v34

    .line 1229
    .line 1230
    move-object/from16 v15, v35

    .line 1231
    .line 1232
    move-object/from16 v3, v36

    .line 1233
    .line 1234
    goto/16 :goto_12

    .line 1235
    .line 1236
    :goto_18
    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1237
    throw v0

    .line 1238
    :cond_24
    move-object/from16 v34, v0

    .line 1239
    .line 1240
    move-object/from16 v36, v3

    .line 1241
    .line 1242
    move-object/from16 v33, v10

    .line 1243
    .line 1244
    move-object/from16 v35, v15

    .line 1245
    .line 1246
    const/4 v3, -0x1

    .line 1247
    const/4 v4, 0x0

    .line 1248
    goto :goto_1a

    .line 1249
    :goto_19
    const/4 v7, 0x0

    .line 1250
    :goto_1a
    iget-boolean v0, v2, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    .line 1251
    .line 1252
    if-eqz v0, :cond_26

    .line 1253
    .line 1254
    if-nez v7, :cond_25

    .line 1255
    .line 1256
    new-instance v7, Ljava/util/ArrayList;

    .line 1257
    .line 1258
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .line 1260
    .line 1261
    :cond_25
    new-instance v0, Landroid/content/ComponentName;

    .line 1262
    .line 1263
    const-string v5, "android"

    .line 1264
    .line 1265
    const-string v9, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    .line 1266
    .line 1267
    invoke-direct {v0, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    .line 1272
    .line 1273
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1274
    .line 1275
    .line 1276
    move-result v0

    .line 1277
    iget-object v5, v6, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 1278
    .line 1279
    const/4 v9, 0x1

    .line 1280
    invoke-virtual {v5, v0, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1281
    .line 1282
    .line 1283
    :cond_26
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1284
    .line 1285
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1286
    .line 1287
    const-class v5, Lcom/android/server/DeviceIdleInternal;

    .line 1288
    .line 1289
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 1290
    .line 1291
    invoke-interface {v0, v5}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 1296
    .line 1297
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v5

    .line 1301
    const-string v21, ""

    .line 1302
    .line 1303
    const/16 v19, 0x0

    .line 1304
    .line 1305
    const/16 v20, 0x131

    .line 1306
    .line 1307
    move-object/from16 v16, v5

    .line 1308
    .line 1309
    move-wide/from16 v17, v11

    .line 1310
    .line 1311
    invoke-virtual/range {v16 .. v21}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    if-eqz v7, :cond_27

    .line 1315
    .line 1316
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1317
    .line 1318
    .line 1319
    move-result v9

    .line 1320
    if-nez v9, :cond_28

    .line 1321
    .line 1322
    const-string v4, "Additional verifiers required, but none installed."

    .line 1323
    .line 1324
    const-string v7, "PackageManager"

    .line 1325
    .line 1326
    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    .line 1328
    .line 1329
    const/16 v7, -0x16

    .line 1330
    .line 1331
    invoke-virtual {v1, v7, v4}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    :cond_27
    move-object/from16 v3, v35

    .line 1335
    .line 1336
    move-object/from16 v15, v36

    .line 1337
    .line 1338
    const/4 v7, 0x0

    .line 1339
    goto :goto_1c

    .line 1340
    :cond_28
    :goto_1b
    if-ge v4, v9, :cond_27

    .line 1341
    .line 1342
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v10

    .line 1346
    check-cast v10, Landroid/content/ComponentName;

    .line 1347
    .line 1348
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1349
    .line 1350
    .line 1351
    move-result v17

    .line 1352
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v18

    .line 1356
    const-string/jumbo v24, "package verifier"

    .line 1357
    .line 1358
    .line 1359
    const/16 v22, 0x0

    .line 1360
    .line 1361
    const/16 v23, 0x131

    .line 1362
    .line 1363
    move-object/from16 v16, v0

    .line 1364
    .line 1365
    move-wide/from16 v19, v11

    .line 1366
    .line 1367
    move/from16 v21, v8

    .line 1368
    .line 1369
    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    new-instance v13, Landroid/content/Intent;

    .line 1373
    .line 1374
    move-object/from16 v15, v36

    .line 1375
    .line 1376
    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v13, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1380
    .line 1381
    .line 1382
    iget-object v10, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1383
    .line 1384
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1385
    .line 1386
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v14

    .line 1390
    move-object/from16 v16, v7

    .line 1391
    .line 1392
    move-object/from16 v3, v35

    .line 1393
    .line 1394
    const/4 v7, 0x0

    .line 1395
    invoke-virtual {v10, v13, v3, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1396
    .line 1397
    .line 1398
    add-int/lit8 v4, v4, 0x1

    .line 1399
    .line 1400
    move-object/from16 v7, v16

    .line 1401
    .line 1402
    const/4 v3, -0x1

    .line 1403
    goto :goto_1b

    .line 1404
    :goto_1c
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    .line 1405
    .line 1406
    .line 1407
    move-result v4

    .line 1408
    if-nez v4, :cond_29

    .line 1409
    .line 1410
    const-string v0, "PackageManager"

    .line 1411
    .line 1412
    const-string v3, "No required verifiers"

    .line 1413
    .line 1414
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .line 1416
    .line 1417
    move/from16 v9, v30

    .line 1418
    .line 1419
    goto/16 :goto_25

    .line 1420
    .line 1421
    :cond_29
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->emergencyInstallPermission()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v4

    .line 1425
    if-eqz v4, :cond_2a

    .line 1426
    .line 1427
    iget-object v4, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 1428
    .line 1429
    move-object/from16 v9, v29

    .line 1430
    .line 1431
    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v4

    .line 1435
    if-eqz v4, :cond_2b

    .line 1436
    .line 1437
    :goto_1d
    const/4 v10, 0x2

    .line 1438
    goto :goto_1e

    .line 1439
    :cond_2a
    move-object/from16 v9, v29

    .line 1440
    .line 1441
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getDefaultVerificationResponse()I

    .line 1442
    .line 1443
    .line 1444
    move-result v4

    .line 1445
    const/4 v10, 0x1

    .line 1446
    if-ne v4, v10, :cond_2c

    .line 1447
    .line 1448
    goto :goto_1d

    .line 1449
    :cond_2c
    const/4 v10, -0x1

    .line 1450
    :goto_1e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v4

    .line 1454
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1455
    .line 1456
    .line 1457
    move-result v13

    .line 1458
    if-eqz v13, :cond_31

    .line 1459
    .line 1460
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v13

    .line 1464
    check-cast v13, Ljava/lang/String;

    .line 1465
    .line 1466
    move-object/from16 v35, v3

    .line 1467
    .line 1468
    move-object/from16 v26, v4

    .line 1469
    .line 1470
    move-object/from16 v14, v34

    .line 1471
    .line 1472
    const-wide/32 v3, 0x10000000

    .line 1473
    .line 1474
    .line 1475
    invoke-interface {v14, v13, v3, v4, v8}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 1476
    .line 1477
    .line 1478
    move-result v7

    .line 1479
    if-eqz v28, :cond_2d

    .line 1480
    .line 1481
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 1482
    .line 1483
    .line 1484
    move-result v3

    .line 1485
    const/4 v4, 0x1

    .line 1486
    if-ne v3, v4, :cond_2e

    .line 1487
    .line 1488
    :cond_2d
    move-object/from16 v29, v9

    .line 1489
    .line 1490
    move-object/from16 v34, v14

    .line 1491
    .line 1492
    move/from16 v9, v30

    .line 1493
    .line 1494
    goto :goto_21

    .line 1495
    :cond_2e
    new-instance v3, Landroid/content/Intent;

    .line 1496
    .line 1497
    move-object/from16 v29, v9

    .line 1498
    .line 1499
    const-string v9, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 1500
    .line 1501
    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1505
    .line 1506
    .line 1507
    const/high16 v4, 0x10000000

    .line 1508
    .line 1509
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1510
    .line 1511
    .line 1512
    const/16 v9, 0x20

    .line 1513
    .line 1514
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1515
    .line 1516
    .line 1517
    new-instance v4, Ljava/io/File;

    .line 1518
    .line 1519
    iget-object v9, v1, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 1520
    .line 1521
    iget-object v9, v9, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 1522
    .line 1523
    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v4

    .line 1530
    const-string v9, "application/vnd.android.package-archive"

    .line 1531
    .line 1532
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    .line 1534
    .line 1535
    const-string v4, "android.content.pm.extra.SESSION_ID"

    .line 1536
    .line 1537
    iget v9, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 1538
    .line 1539
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1540
    .line 1541
    .line 1542
    const-string v4, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 1543
    .line 1544
    iget v9, v1, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    .line 1545
    .line 1546
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1547
    .line 1548
    .line 1549
    if-eqz v31, :cond_2f

    .line 1550
    .line 1551
    const-string v4, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    .line 1552
    .line 1553
    move-object/from16 v9, v31

    .line 1554
    .line 1555
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    .line 1557
    .line 1558
    goto :goto_20

    .line 1559
    :cond_2f
    move-object/from16 v9, v31

    .line 1560
    .line 1561
    :goto_20
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    .line 1563
    .line 1564
    const-string v4, "android.content.pm.extra.VERIFICATION_ID"

    .line 1565
    .line 1566
    move-object/from16 v31, v9

    .line 1567
    .line 1568
    move-object/from16 v34, v14

    .line 1569
    .line 1570
    move/from16 v9, v30

    .line 1571
    .line 1572
    neg-int v14, v9

    .line 1573
    invoke-virtual {v3, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1574
    .line 1575
    .line 1576
    move-object v14, v3

    .line 1577
    const/4 v4, 0x0

    .line 1578
    goto :goto_23

    .line 1579
    :goto_21
    new-instance v3, Landroid/content/Intent;

    .line 1580
    .line 1581
    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1582
    .line 1583
    .line 1584
    if-nez v28, :cond_30

    .line 1585
    .line 1586
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v4

    .line 1590
    invoke-static {v13, v4}, Lcom/android/server/pm/VerifyingSession;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v4

    .line 1594
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1595
    .line 1596
    .line 1597
    goto :goto_22

    .line 1598
    :cond_30
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    .line 1600
    .line 1601
    :goto_22
    const-string v4, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 1602
    .line 1603
    move-object v14, v3

    .line 1604
    :goto_23
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1605
    .line 1606
    .line 1607
    move-result v17

    .line 1608
    const-string/jumbo v24, "package verifier"

    .line 1609
    .line 1610
    .line 1611
    const/16 v22, 0x0

    .line 1612
    .line 1613
    const/16 v23, 0x131

    .line 1614
    .line 1615
    move-object/from16 v16, v0

    .line 1616
    .line 1617
    move-object/from16 v18, v13

    .line 1618
    .line 1619
    move-wide/from16 v19, v11

    .line 1620
    .line 1621
    move/from16 v21, v8

    .line 1622
    .line 1623
    invoke-interface/range {v16 .. v24}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    new-instance v3, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1627
    .line 1628
    invoke-direct {v3, v10, v7}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 1629
    .line 1630
    .line 1631
    iget-object v7, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1632
    .line 1633
    move-object/from16 v24, v0

    .line 1634
    .line 1635
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1636
    .line 1637
    move/from16 v16, v8

    .line 1638
    .line 1639
    const/16 v8, 0x10

    .line 1640
    .line 1641
    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v0

    .line 1645
    iput v9, v0, Landroid/os/Message;->arg1:I

    .line 1646
    .line 1647
    move/from16 v8, v32

    .line 1648
    .line 1649
    iput v8, v0, Landroid/os/Message;->arg2:I

    .line 1650
    .line 1651
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1652
    .line 1653
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1654
    .line 1655
    invoke-virtual {v3, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1656
    .line 1657
    .line 1658
    const-string v0, "PackageManager"

    .line 1659
    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    const-string v7, "Sending PACKAGE_NEEDS_VERIFICATION to "

    .line 1663
    .line 1664
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1665
    .line 1666
    .line 1667
    const-string v7, ", vid: "

    .line 1668
    .line 1669
    move/from16 v32, v8

    .line 1670
    .line 1671
    const-string v8, ", sid: "

    .line 1672
    .line 1673
    invoke-static {v9, v13, v7, v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1674
    .line 1675
    .line 1676
    iget v7, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 1677
    .line 1678
    invoke-static {v3, v7, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1679
    .line 1680
    .line 1681
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1682
    .line 1683
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1684
    .line 1685
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v18

    .line 1689
    const/16 v20, 0x0

    .line 1690
    .line 1691
    const/16 v21, 0x0

    .line 1692
    .line 1693
    const/16 v17, -0x1

    .line 1694
    .line 1695
    const/16 v19, 0x0

    .line 1696
    .line 1697
    const/16 v22, 0x0

    .line 1698
    .line 1699
    const/16 v23, 0x0

    .line 1700
    .line 1701
    const/4 v0, 0x0

    .line 1702
    move/from16 v3, v16

    .line 1703
    .line 1704
    move-object/from16 v7, v34

    .line 1705
    .line 1706
    move-object/from16 v27, v15

    .line 1707
    .line 1708
    move-object/from16 v8, v35

    .line 1709
    .line 1710
    move-object v15, v8

    .line 1711
    move-object/from16 v16, v4

    .line 1712
    .line 1713
    invoke-virtual/range {v13 .. v23}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1714
    .line 1715
    .line 1716
    move/from16 v30, v9

    .line 1717
    .line 1718
    move-object/from16 v4, v26

    .line 1719
    .line 1720
    move-object/from16 v15, v27

    .line 1721
    .line 1722
    move-object/from16 v9, v29

    .line 1723
    .line 1724
    move-object v7, v0

    .line 1725
    move-object/from16 v0, v24

    .line 1726
    .line 1727
    move-object/from16 v37, v8

    .line 1728
    .line 1729
    move v8, v3

    .line 1730
    move-object/from16 v3, v37

    .line 1731
    .line 1732
    goto/16 :goto_1f

    .line 1733
    .line 1734
    :cond_31
    move/from16 v9, v30

    .line 1735
    .line 1736
    const-string/jumbo v0, "verification"

    .line 1737
    .line 1738
    .line 1739
    const-wide/32 v3, 0x40000

    .line 1740
    .line 1741
    .line 1742
    invoke-static {v3, v4, v0, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1743
    .line 1744
    .line 1745
    const/4 v3, 0x1

    .line 1746
    iput-boolean v3, v1, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    .line 1747
    .line 1748
    goto :goto_25

    .line 1749
    :cond_32
    move v9, v5

    .line 1750
    :goto_24
    iget-object v0, v6, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 1751
    .line 1752
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 1753
    .line 1754
    .line 1755
    move-result v0

    .line 1756
    if-gtz v0, :cond_35

    .line 1757
    .line 1758
    iput-boolean v3, v6, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 1759
    .line 1760
    iput-boolean v3, v6, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 1761
    .line 1762
    :goto_25
    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    .line 1763
    .line 1764
    .line 1765
    move-result v0

    .line 1766
    if-eqz v0, :cond_33

    .line 1767
    .line 1768
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1769
    .line 1770
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 1771
    .line 1772
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 1773
    .line 1774
    .line 1775
    :cond_33
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 1776
    .line 1777
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1778
    .line 1779
    if-ne v0, v3, :cond_34

    .line 1780
    .line 1781
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1782
    .line 1783
    :cond_34
    :try_start_9
    new-instance v3, Landroid/content/Intent;

    .line 1784
    .line 1785
    const-string v4, "com.samsung.android.intent.action.PACKAGE_INSTALL_STARTED"

    .line 1786
    .line 1787
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1788
    .line 1789
    .line 1790
    const-string/jumbo v4, "packageName"

    .line 1791
    .line 1792
    .line 1793
    iget-object v2, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 1794
    .line 1795
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    .line 1797
    .line 1798
    const-string/jumbo v2, "userID"

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1802
    .line 1803
    .line 1804
    move-result v0

    .line 1805
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1806
    .line 1807
    .line 1808
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1809
    .line 1810
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1811
    .line 1812
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1813
    .line 1814
    const-string v4, "android.permission.HARDWARE_TEST"

    .line 1815
    .line 1816
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    const-string v0, "PackageManager"

    .line 1820
    .line 1821
    const-string/jumbo v2, "sendBroadcastAsUser. PACKAGE_INSTALL_STARTED"

    .line 1822
    .line 1823
    .line 1824
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1825
    .line 1826
    .line 1827
    goto :goto_26

    .line 1828
    :catch_5
    move-exception v0

    .line 1829
    const-string v2, "PackageManager"

    .line 1830
    .line 1831
    const-string v3, "Failed to send an intent for PACKAGE_INSTALL_STARTED: "

    .line 1832
    .line 1833
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    .line 1835
    .line 1836
    goto :goto_26

    .line 1837
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1838
    .line 1839
    const-string v1, "Required verifiers still present."

    .line 1840
    .line 1841
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1842
    .line 1843
    .line 1844
    throw v0

    .line 1845
    :cond_36
    :goto_26
    iget v0, v1, Lcom/android/server/pm/VerifyingSession;->mInstallFlags:I

    .line 1846
    .line 1847
    const/high16 v2, 0x40000

    .line 1848
    .line 1849
    and-int/2addr v0, v2

    .line 1850
    if-eqz v0, :cond_38

    .line 1851
    .line 1852
    iget-object v0, v1, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1853
    .line 1854
    iget v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 1855
    .line 1856
    add-int/lit8 v3, v2, 0x1

    .line 1857
    .line 1858
    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 1859
    .line 1860
    const-string v3, "enable_rollback"

    .line 1861
    .line 1862
    const-wide/32 v4, 0x40000

    .line 1863
    .line 1864
    .line 1865
    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1866
    .line 1867
    .line 1868
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 1869
    .line 1870
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1871
    .line 1872
    .line 1873
    new-instance v3, Landroid/content/Intent;

    .line 1874
    .line 1875
    const-string v4, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    .line 1876
    .line 1877
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    const-string v4, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    .line 1881
    .line 1882
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1883
    .line 1884
    .line 1885
    const-string v4, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 1886
    .line 1887
    iget v5, v1, Lcom/android/server/pm/VerifyingSession;->mSessionId:I

    .line 1888
    .line 1889
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1890
    .line 1891
    .line 1892
    const-string v4, "application/vnd.android.package-archive"

    .line 1893
    .line 1894
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1895
    .line 1896
    .line 1897
    const v4, 0x10000001

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1901
    .line 1902
    .line 1903
    const/high16 v4, 0x4000000

    .line 1904
    .line 1905
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1906
    .line 1907
    .line 1908
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1909
    .line 1910
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1911
    .line 1912
    const-string v7, "android.permission.PACKAGE_ROLLBACK_AGENT"

    .line 1913
    .line 1914
    invoke-virtual {v4, v3, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    const/4 v3, 0x1

    .line 1918
    iput-boolean v3, v1, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    .line 1919
    .line 1920
    const-string/jumbo v1, "rollback"

    .line 1921
    .line 1922
    .line 1923
    const-string v3, "enable_rollback_timeout"

    .line 1924
    .line 1925
    const-wide/16 v6, 0x2710

    .line 1926
    .line 1927
    invoke-static {v1, v3, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 1928
    .line 1929
    .line 1930
    move-result-wide v3

    .line 1931
    const-wide/16 v8, 0x0

    .line 1932
    .line 1933
    cmp-long v1, v3, v8

    .line 1934
    .line 1935
    if-gez v1, :cond_37

    .line 1936
    .line 1937
    move-wide v7, v6

    .line 1938
    goto :goto_27

    .line 1939
    :cond_37
    move-wide v7, v3

    .line 1940
    :goto_27
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1941
    .line 1942
    const/16 v3, 0x16

    .line 1943
    .line 1944
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1949
    .line 1950
    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 1951
    .line 1952
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1953
    .line 1954
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1955
    .line 1956
    .line 1957
    :cond_38
    return-void
.end method

.method public final isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "verifier_verify_adb_installs"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    const-string v3, "ensure_verify_apps"

    .line 24
    .line 25
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string p0, "PackageManager"

    .line 34
    .line 35
    const-string p1, "Force verification of ADB install because of user restriction."

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    return v2

    .line 41
    :cond_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    return v1

    .line 44
    :cond_3
    if-eqz p3, :cond_4

    .line 45
    .line 46
    iget-object p2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    iget-boolean p0, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 59
    .line 60
    xor-int/2addr p0, v2

    .line 61
    return p0

    .line 62
    :cond_4
    return v2
.end method

.method public final populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/VerifyingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    .line 11
    .line 12
    if-eqz p0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "android.intent.extra.ORIGINATING_URI"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v1, "android.intent.extra.REFERRER"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v0, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    .line 33
    .line 34
    if-ltz v0, :cond_2

    .line 35
    .line 36
    const-string v1, "android.intent.extra.ORIGINATING_UID"

    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    :cond_2
    iget p0, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    .line 42
    .line 43
    if-ltz p0, :cond_3

    .line 44
    .line 45
    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 46
    .line 47
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public final setReturnCode(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VerifyingSession{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " file="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string/jumbo p0, "}"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
