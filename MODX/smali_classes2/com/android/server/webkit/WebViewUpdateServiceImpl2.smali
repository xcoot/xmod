.class public final Lcom/android/server/webkit/WebViewUpdateServiceImpl2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/webkit/WebViewUpdateServiceInterface;


# instance fields
.field public mAnyWebViewInstalled:Z

.field public mAttemptedToRepairBefore:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field public final mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

.field public final mLock:Ljava/lang/Object;

.field public mMinimumVersionCode:J

.field public mNumRelroCreationsFinished:I

.field public mNumRelroCreationsStarted:I

.field public final mSystemInterface:Lcom/android/server/webkit/SystemImpl;

.field public mWebViewPackageDirty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemImpl;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    array-length p2, p1

    .line 38
    :goto_0
    if-ge v0, p2, :cond_1

    .line 39
    .line 40
    aget-object v2, p1, v0

    .line 41
    .line 42
    iget-boolean v3, v2, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    move-object v1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 57
    .line 58
    const-string p1, "No available by default WebView Provider."

    .line 59
    .line 60
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/webkit/UserPackage;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x1

    .line 32
    return p0
.end method


# virtual methods
.method public final attemptRepair()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string v0, "WebViewUpdateServiceImpl2"

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "No provider available for all users, trying to install and enable "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 26
    .line 27
    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 37
    .line 38
    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-class v0, Landroid/os/UserManager;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/os/UserManager;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 70
    .line 71
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 72
    .line 73
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageInstaller;->installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 104
    .line 105
    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v1, p0}, Lcom/android/server/webkit/SystemImpl;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public final changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public final checkIfRelrosDoneLocked()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 4
    .line 5
    const-string v2, "  WebView packages:"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_7

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v7, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    const v8, 0x104004c0

    .line 25
    .line 26
    .line 27
    invoke-static {v6, v7, v8}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Landroid/webkit/UserPackage;

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, "    %s is NOT installed."

    .line 50
    .line 51
    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 77
    .line 78
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    const-string/jumbo v10, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    .line 87
    .line 88
    .line 89
    invoke-static {v10, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    if-nez v7, :cond_2

    .line 94
    .line 95
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v7, v5, v8}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v5, :cond_1

    .line 113
    .line 114
    const-string v5, ""

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const-string v5, "NOT"

    .line 118
    .line 119
    :goto_1
    filled-new-array {v6, v9, v5}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-string v6, "    Valid package %s (%s) is %s installed/enabled for all users"

    .line 124
    .line 125
    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_2
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    if-eq v7, v6, :cond_6

    .line 137
    .line 138
    const/4 v6, 0x2

    .line 139
    if-eq v7, v6, :cond_5

    .line 140
    .line 141
    const/4 v6, 0x3

    .line 142
    if-eq v7, v6, :cond_4

    .line 143
    .line 144
    const/4 v6, 0x4

    .line 145
    if-eq v7, v6, :cond_3

    .line 146
    .line 147
    const-string v6, "Unexcepted validity-reason"

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    const-string v6, "No WebView-library manifest flag"

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const-string v6, "Incorrect signature"

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    const-string v6, "Version code too low"

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    const-string v6, "SDK version too low"

    .line 160
    .line 161
    :goto_2
    filled-new-array {v5, v9, v6}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const-string v6, "    Invalid package %s (%s), reason: %s"

    .line 166
    .line 167
    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_7
    return-void
.end method

.method public final dumpState(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Current WebView Update Service state"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "  Current WebView package is null"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    const-string v2, "  Current WebView package (name, version): (%s, %s)"

    .line 23
    .line 24
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 27
    .line 28
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const-string v1, "  Minimum targetSdkVersion: %d"

    .line 40
    .line 41
    const/16 v2, 0x21

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "  Minimum WebView version code: %d"

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "  Number of relros started: %d"

    .line 78
    .line 79
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "  Number of relros finished: %d"

    .line 97
    .line 98
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 99
    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v1, "  WebView package dirty: %b"

    .line 116
    .line 117
    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v1, "  Any WebView package installed: %b"

    .line 135
    .line 136
    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 137
    .line 138
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "  Preferred WebView package (name, version): (%s, %s)"

    .line 158
    .line 159
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 162
    .line 163
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_0
    :try_start_2
    const-string v1, "  Preferred WebView package: none"

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 181
    .line 182
    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 185
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    throw p0
.end method

.method public final enableMultiProcess(Z)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "enableMultiProcess shouldn\'t be called if update_service_v2 flag is set."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 9

    .line 1
    const-string/jumbo v0, "webview.value_find_preferred_webview_package_counter"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v2, "webview_provider"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    array-length v5, v2

    .line 32
    if-ge v4, v5, :cond_1

    .line 33
    .line 34
    aget-object v5, v2, v4

    .line 35
    .line 36
    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    aget-object v2, v2, v4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_1
    const-string v4, ") not found"

    .line 52
    .line 53
    const-string v5, "WebViewUpdateServiceImpl2"

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/server/webkit/SystemImpl;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {p0, v2, v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    const v8, 0x104004c0

    .line 75
    .line 76
    .line 77
    invoke-static {v7, v2, v8}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    return-object v6

    .line 88
    :catch_0
    const-string v2, "User chosen WebView package ("

    .line 89
    .line 90
    invoke-static {v2, v0, v4, v5}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/android/server/webkit/SystemImpl;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 100
    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_3
    const-string/jumbo v0, "webview.value_default_webview_package_invalid_counter"

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "Default WebView package ("

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 123
    .line 124
    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v0, v1, v4, v5}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    const-string/jumbo v0, "webview.value_webview_not_usable_for_all_users_counter"

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 136
    .line 137
    new-instance p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;

    .line 138
    .line 139
    const-string v0, "Could not find a loadable WebView package"

    .line 140
    .line 141
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public final getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    array-length v5, v1

    .line 13
    if-ge v4, v5, :cond_1

    .line 14
    .line 15
    :try_start_0
    aget-object v5, v1, v4

    .line 16
    .line 17
    invoke-virtual {v0, v5}, Lcom/android/server/webkit/SystemImpl;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    aget-object v6, v1, v4

    .line 22
    .line 23
    invoke-virtual {p0, v6, v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    new-instance v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    .line 30
    .line 31
    aget-object v6, v1, v4

    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    new-array p0, p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, [Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;

    .line 53
    .line 54
    array-length v0, p0

    .line 55
    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    .line 56
    .line 57
    :goto_1
    array-length v1, p0

    .line 58
    if-ge v3, v1, :cond_2

    .line 59
    .line 60
    aget-object v1, p0, v3

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 63
    .line 64
    aput-object v1, v0, v3

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-object v0
.end method

.method public final getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 4
    .line 5
    return-object p0
.end method

.method public final handleNewUser(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final handleUserRemoved()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final isMultiProcessEnabled()Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "isMultiProcessEnabled shouldn\'t be called if update_service_v2 flag is set."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final notifyRelroCreationCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 10
    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 14
    .line 15
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/android/server/webkit/SystemImpl;->pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    const v1, 0x7fffffff

    .line 23
    .line 24
    .line 25
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 40
    .line 41
    const-string/jumbo v1, "webview.value_on_webview_provider_changed_counter"

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 50
    .line 51
    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const-string/jumbo p1, "webview.value_on_webview_provider_changed_with_default_package_counter"

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 73
    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final packageStateChanged(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_7

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_6

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v5

    .line 23
    const/4 p1, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :catch_0
    move-exception v0

    .line 39
    move-object v1, p1

    .line 40
    :goto_1
    move v3, v2

    .line 41
    goto :goto_5

    .line 42
    :cond_0
    move-object v1, p1

    .line 43
    :goto_2
    :try_start_1
    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_1
    move v3, v2

    .line 67
    goto :goto_4

    .line 68
    :catch_1
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_3
    const/4 v3, 0x1

    .line 71
    :goto_4
    :try_start_2
    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_6

    .line 83
    :catch_2
    move-exception v0

    .line 84
    move v7, v3

    .line 85
    move v3, v2

    .line 86
    move v2, v7

    .line 87
    :goto_5
    :try_start_3
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 88
    .line 89
    const-string p1, "WebViewUpdateServiceImpl2"

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "Could not find valid WebView package to create relro with "

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move v7, v3

    .line 112
    move v3, v2

    .line 113
    move v2, v7

    .line 114
    :cond_3
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    if-nez v2, :cond_4

    .line 122
    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/android/server/webkit/SystemImpl;->killPackageDependents(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    if-eqz p1, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    .line 133
    .line 134
    .line 135
    :cond_5
    return-void

    .line 136
    :goto_7
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    throw p0

    .line 138
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_7
    return-void
.end method

.method public final prepareWebViewInSystemServer()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string/jumbo v3, "webview_provider"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 49
    .line 50
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Lcom/android/server/webkit/SystemImpl;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 61
    .line 62
    .line 63
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V
    :try_end_2
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    throw p0
    :try_end_4
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :goto_2
    const-string v0, "WebViewUpdateServiceImpl2"

    .line 77
    .line 78
    const-string v1, "error preparing webview provider from system server"

    .line 79
    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :goto_3
    const-string v0, "WebViewUpdateServiceImpl2"

    .line 85
    .line 86
    const-string v1, "Could not find valid WebView package to create relro with"

    .line 87
    .line 88
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_4
    return-void
.end method

.method public final shouldTriggerRepairLocked()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 16
    .line 17
    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p0, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    const v1, 0x104004c0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p0, v1}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    xor-int/2addr p0, v2

    .line 48
    return p0

    .line 49
    :cond_2
    return v1
.end method

.method public final updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 7

    .line 1
    const-string v0, "Couldn\'t find WebView package to use "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3, v4, p1}, Lcom/android/server/webkit/SystemImpl;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_4

    .line 20
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v4

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    if-nez p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 60
    .line 61
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/android/server/webkit/SystemImpl;->killPackageDependents(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_5
    if-eqz v4, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    .line 69
    .line 70
    .line 71
    :cond_6
    return-object v3

    .line 72
    :goto_3
    const/4 v2, 0x0

    .line 73
    :try_start_3
    iput-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 74
    .line 75
    const-string p0, "WebViewUpdateServiceImpl2"

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    monitor-exit v1

    .line 93
    return-object v2

    .line 94
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    throw p0
.end method

.method public final validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-wide v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    .line 18
    .line 19
    const-wide/16 v8, 0x0

    .line 20
    .line 21
    cmp-long v2, v6, v8

    .line 22
    .line 23
    iget-object v11, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v2, v11, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 29
    .line 30
    array-length v6, v2

    .line 31
    const-wide/16 v12, -0x1

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    :goto_0
    if-ge v7, v6, :cond_4

    .line 35
    .line 36
    aget-object v14, v2, v7

    .line 37
    .line 38
    iget-boolean v15, v14, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 39
    .line 40
    if-eqz v15, :cond_3

    .line 41
    .line 42
    :try_start_0
    iget-object v14, v14, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 48
    .line 49
    .line 50
    move-result-object v15

    .line 51
    invoke-virtual {v15}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    const/high16 v10, 0x200000

    .line 56
    .line 57
    invoke-virtual {v15, v14, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 62
    .line 63
    .line 64
    move-result-wide v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    cmp-long v10, v12, v8

    .line 66
    .line 67
    if-ltz v10, :cond_2

    .line 68
    .line 69
    cmp-long v10, v14, v12

    .line 70
    .line 71
    if-gez v10, :cond_3

    .line 72
    .line 73
    :cond_2
    move-wide v12, v14

    .line 74
    :catch_0
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iput-wide v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    .line 78
    .line 79
    move-wide v6, v12

    .line 80
    :goto_1
    const-wide/32 v8, 0x186a0

    .line 81
    .line 82
    .line 83
    div-long/2addr v4, v8

    .line 84
    div-long/2addr v6, v8

    .line 85
    cmp-long v0, v4, v6

    .line 86
    .line 87
    if-ltz v0, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 94
    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    return v0

    .line 99
    :cond_6
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    :goto_3
    const/4 v6, 0x0

    .line 107
    goto :goto_5

    .line 108
    :cond_7
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_8
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 118
    .line 119
    array-length v0, v0

    .line 120
    if-eq v0, v3, :cond_9

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_9
    move-object/from16 v0, p1

    .line 124
    .line 125
    iget-object v0, v0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 126
    .line 127
    array-length v2, v0

    .line 128
    const/4 v3, 0x0

    .line 129
    :goto_4
    if-ge v3, v2, :cond_c

    .line 130
    .line 131
    aget-object v4, v0, v3

    .line 132
    .line 133
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    aget-object v5, v5, v6

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_b

    .line 143
    .line 144
    :goto_5
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_a

    .line 151
    .line 152
    const/4 v0, 0x4

    .line 153
    return v0

    .line 154
    :cond_a
    return v6

    .line 155
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_c
    :goto_6
    const/4 v0, 0x3

    .line 159
    return v0
.end method

.method public final waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    add-long/2addr v0, v4

    .line 12
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v4

    .line 15
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    iget v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 22
    .line 23
    iget v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 24
    .line 25
    if-ne v5, v8, :cond_0

    .line 26
    .line 27
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    :goto_0
    move v5, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v5, v7

    .line 34
    :goto_1
    if-nez v5, :cond_2

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    div-long/2addr v8, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    cmp-long v10, v8, v0

    .line 42
    .line 43
    if-ltz v10, :cond_1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    sub-long v8, v0, v8

    .line 49
    .line 50
    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_5

    .line 56
    :catch_0
    :goto_2
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 57
    .line 58
    if-nez v5, :cond_0

    .line 59
    .line 60
    iget v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 61
    .line 62
    iget v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 63
    .line 64
    if-ne v5, v8, :cond_0

    .line 65
    .line 66
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 67
    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 72
    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    const/4 v7, 0x4

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "Timed out waiting for relro creation, relros started "

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, " relros finished "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " package dirty? "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string v1, "WebViewUpdateServiceImpl2"

    .line 122
    .line 123
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const-wide/16 v1, 0x40

    .line 127
    .line 128
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 v7, 0x3

    .line 132
    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    if-nez v5, :cond_5

    .line 134
    .line 135
    const-string p0, "WebViewUpdateServiceImpl2"

    .line 136
    .line 137
    const-string v1, "creating relro file timed out"

    .line 138
    .line 139
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    new-instance p0, Landroid/webkit/WebViewProviderResponse;

    .line 143
    .line 144
    invoke-direct {p0, v0, v7}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    throw p0
.end method
