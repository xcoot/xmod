.class public abstract Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCachedPackageArchiveInfo:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mFailCount:I

.field public final mFingerprint:Ljava/lang/String;

.field public mHistoryForSettingProvider:Ljava/lang/String;

.field public final mInstallHistory:Ljava/util/Collection;

.field public final mInstallPackageList:Ljava/util/ArrayList;

.field public mIsFirstBoot:Z

.field public mIsUpgrade:Z

.field public final mLock:Ljava/lang/Object;

.field public final mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

.field public final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

.field public mSkipCount:I

.field public mSuccessCount:I

.field public final mUninstallPackageList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;ZZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mCachedPackageArchiveInfo:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 42
    .line 43
    new-instance v1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, v1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 56
    .line 57
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, v1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 72
    .line 73
    iput-boolean p3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 74
    .line 75
    iput-boolean p4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    iput p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSuccessCount:I

    .line 79
    .line 80
    iput p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFailCount:I

    .line 81
    .line 82
    iput p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSkipCount:I

    .line 83
    .line 84
    new-instance p2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    sput-object p1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    .line 92
    .line 93
    sget-object p2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string/jumbo p3, "preload_fingerprint"

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprint:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    .line 114
    return-void
.end method

.method public static isExistHigherVersionPkg(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v3, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 14
    .line 15
    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 16
    .line 17
    if-gt v3, v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gtz v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    :cond_2
    :goto_0
    return v0
.end method

.method public static isValidApkFile(Ljava/io/File;)Z
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, ".apk"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method


# virtual methods
.method public abstract addInstallPackageList([Ljava/io/File;)V
.end method

.method public final addPackageLocation(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    array-length v1, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    aget-object v3, p1, v2

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addPackageLocation(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda5;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addInstallPackageList([Ljava/io/File;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public final addUninstallPkgList(Ljava/io/File;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    .line 15
    .line 16
    const-string v2, "UTF-8"

    .line 17
    .line 18
    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-lez v4, :cond_0

    .line 37
    .line 38
    const-string v4, "#"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v5, "add to unInstallPackageList from list omcFile - pkg:"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    .line 84
    .line 85
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    .line 87
    .line 88
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_8

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_7

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    goto :goto_5

    .line 96
    :catchall_2
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_3
    move-exception v2

    .line 103
    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 107
    :goto_3
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catchall_4
    move-exception p1

    .line 112
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_4
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 116
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :catchall_5
    move-exception p1

    .line 121
    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_6
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 125
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_8
    return-void
.end method

.method public final getCachedPackageArchiveInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mCachedPackageArchiveInfo:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mCachedPackageArchiveInfo:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mCachedPackageArchiveInfo:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    monitor-exit v1

    .line 45
    return-object v0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    throw p0

    .line 49
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public abstract prepareInstall()V
.end method

.method public final prepareSettings()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprint:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 25
    .line 26
    :cond_2
    :goto_1
    const-string/jumbo v0, "persist.sys.storage_preload"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v3, "persist.sys.storage_preload : "

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    const-string p0, "1"

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    const-string/jumbo v1, "previously, Something\'s wrong.. mounting hidden as first booting"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v0, 0x3e8

    .line 75
    .line 76
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public putInstallHistory(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 12
    .line 13
    check-cast v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ";"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string/jumbo v2, "preload_install_history"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v1, "saveInstallHistory() : "

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->flush()V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method public final removeApkFileFromInstallList(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSkipCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSkipCount:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->removeCacheFile()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public removeInstalledPkgFromList()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isValidApkFile(Ljava/io/File;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeApkFileFromInstallList(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->getCachedPackageArchiveInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v6, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-boolean v7, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    invoke-static {v4, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->isExistHigherVersionPkg(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v6, "exists higher Version: "

    .line 71
    .line 72
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeApkFileFromInstallList(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-eqz v6, :cond_0

    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v6, "already installed : "

    .line 106
    .line 107
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeApkFileFromInstallList(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeApkFileFromInstallList(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo v5, "something wrong occurred "

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v3, ", e = "

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string/jumbo v4, "new : "

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_3
    const-string p0, "fin"

    .line 191
    .line 192
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final runPrePackageInstaller()Ljava/util/concurrent/Future;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprint:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "attempt_count"

    .line 22
    .line 23
    const-class v2, Lcom/samsung/android/server/pm/PmSharedPreferences;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string/jumbo v5, "samsung_pm_settings.xml"

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-wide/16 v2, 0x1

    .line 55
    .line 56
    add-long/2addr v0, v2

    .line 57
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const-wide/16 v3, 0x5

    .line 60
    .line 61
    rem-long v5, v0, v3

    .line 62
    .line 63
    invoke-static {v2, v5, v6}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putLong(Landroid/content/Context;J)V

    .line 64
    .line 65
    .line 66
    cmp-long v0, v0, v3

    .line 67
    .line 68
    if-ltz v0, :cond_3

    .line 69
    .line 70
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 71
    .line 72
    const-string v0, "/data/user_de/0/android/cache/PrePackageInstaller"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    const/4 p0, 0x0

    .line 87
    return-object p0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "!@mIsUpgrade : "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ", mIsFirstBoot : "

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-boolean v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", mFingerprint : "

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFingerprint:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    .line 136
    .line 137
    const-string v1, "PrePackageInstallThread"

    .line 138
    .line 139
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;

    .line 155
    .line 156
    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/util/concurrent/CompletableFuture;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0
.end method

.method public setDisabled()V
    .locals 13

    .line 1
    const-string/jumbo v0, "persist.sys.storage_preload"

    .line 2
    .line 3
    .line 4
    const-string v1, "0"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 10
    .line 11
    const-string v2, "Set package state to disabled"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->flush()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string v2, "Waiting for cache flush..."

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->flush()V

    .line 33
    .line 34
    .line 35
    const-wide/16 v2, 0x3e8

    .line 36
    .line 37
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const-string v2, "2"

    .line 41
    .line 42
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsFirstBoot:Z

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    const-string v0, " , Request : "

    .line 50
    .line 51
    const-string/jumbo v2, "mdc.sys.omc_etcpath"

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_1
    const-string v3, "/grantpermissionslist.txt"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "grantPermission file path : "

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Ljava/io/File;

    .line 93
    .line 94
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 104
    .line 105
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .line 107
    .line 108
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    .line 109
    .line 110
    const-string v5, "UTF-8"

    .line 111
    .line 112
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .line 114
    .line 115
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    .line 116
    .line 117
    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    if-eqz v6, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-lez v7, :cond_2

    .line 131
    .line 132
    const-string v7, "#"

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_2

    .line 139
    .line 140
    const-string v7, "/"

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    array-length v7, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    const/4 v8, 0x2

    .line 148
    if-ne v7, v8, :cond_2

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    const/4 v8, 0x0

    .line 152
    :try_start_4
    iget-object v9, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 153
    .line 154
    aget-object v10, v6, v8

    .line 155
    .line 156
    aget-object v11, v6, v7

    .line 157
    .line 158
    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 159
    .line 160
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 161
    .line 162
    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v10, "grantPermission Pkg : "

    .line 169
    .line 170
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    aget-object v10, v6, v8

    .line 174
    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    aget-object v10, v6, v7

    .line 182
    .line 183
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v1, v9}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    goto :goto_1

    .line 196
    :catch_0
    move-exception v9

    .line 197
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v10, "[Error] grantPermission Pkg : "

    .line 206
    .line 207
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    aget-object v8, v6, v8

    .line 211
    .line 212
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    aget-object v6, v6, v7

    .line 219
    .line 220
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v1, v6}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 232
    .line 233
    .line 234
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 235
    .line 236
    .line 237
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :catch_1
    move-exception v0

    .line 242
    goto :goto_7

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    goto :goto_5

    .line 245
    :catchall_2
    move-exception v0

    .line 246
    goto :goto_3

    .line 247
    :goto_1
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :catchall_3
    move-exception v5

    .line 252
    :try_start_a
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    :goto_2
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 256
    :goto_3
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :catchall_4
    move-exception v3

    .line 261
    :try_start_c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    :goto_4
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 265
    :goto_5
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :catchall_5
    move-exception v3

    .line 270
    :try_start_e
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    :goto_6
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 274
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v4, "file error on "

    .line 277
    .line 278
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_4
    :goto_8
    const-string v0, "No file is existed for granting permissions"

    .line 296
    .line 297
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_5
    :goto_9
    const-string v0, "call setGrantPermissions"

    .line 301
    .line 302
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_6
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 306
    .line 307
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    sget-object v2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->mContext:Landroid/content/Context;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    const-string/jumbo v3, "preload_fingerprint"

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    new-instance v0, Landroid/content/Intent;

    .line 325
    .line 326
    const-string v2, "com.samsung.intent.action.PREINSTALLER_FINISH"

    .line 327
    .line 328
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const/high16 v2, 0x1000000

    .line 332
    .line 333
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 337
    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    .line 340
    .line 341
    const-string p0, "!@setDisabled() is FINISHED"

    .line 342
    .line 343
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->flush()V

    .line 350
    .line 351
    .line 352
    return-void
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    return-void
.end method

.method public final startInstallSession(Landroid/content/pm/PackageInstaller$Session;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 2
    .line 3
    const-string v1, "FAIL install, "

    .line 4
    .line 5
    const-string v2, "SUCCESS install, "

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    new-instance v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 9
    .line 10
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v5, v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v5, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;

    .line 21
    .line 22
    invoke-direct {v5, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;)V

    .line 23
    .line 24
    .line 25
    iput-object v5, v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v5, Landroid/content/IntentSender;

    .line 28
    .line 29
    iget-object v6, v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v6, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;

    .line 32
    .line 33
    invoke-direct {v5, v6}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :try_start_1
    iget-object p1, v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    :try_start_2
    const-string v4, "android.content.pm.extra.STATUS"

    .line 53
    .line 54
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const-string v5, "android.content.pm.extra.PACKAGE_NAME"

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v4, :cond_0

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->putInstallHistory(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", msg = "

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return v4

    .line 117
    :catch_1
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v3
.end method

.method public startPrePackageInstall()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "device_policy"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "DeviceOwner abnormal case!! -> setDisabled"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 29
    .line 30
    check-cast v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSettingsProviderProxy:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$SettingsProviderProxy;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string/jumbo v2, "preload_install_history"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "loadInstallHistory() : "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->flush()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 78
    .line 79
    const-string v2, ""

    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    const-string v3, ";"

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    array-length v3, v0

    .line 90
    const/4 v4, 0x0

    .line 91
    :goto_0
    if-ge v4, v3, :cond_2

    .line 92
    .line 93
    aget-object v5, v0, v4

    .line 94
    .line 95
    iget-object v6, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 96
    .line 97
    check-cast v6, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mHistoryForSettingProvider:Ljava/lang/String;

    .line 106
    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->prepareInstall()V

    .line 108
    .line 109
    .line 110
    :try_start_0
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    const-string/jumbo v0, "ril.sales_code"

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_1

    .line 131
    :catch_0
    const-string/jumbo v0, "sales_code reading failed"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v3, "cscCode : "

    .line 140
    .line 141
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    const-string v3, "/prism/preload/"

    .line 157
    .line 158
    const-string v4, "/hidden_app"

    .line 159
    .line 160
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v3, "/product/preload/"

    .line 165
    .line 166
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    const-string v5, "/system/preload"

    .line 171
    .line 172
    const-string v10, "/product/preload/Common_app"

    .line 173
    .line 174
    const-string v7, "/prism/preload/Common_app"

    .line 175
    .line 176
    const-string v8, "/system/carrier/preload"

    .line 177
    .line 178
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    iget-boolean v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 190
    .line 191
    const/4 v3, 0x1

    .line 192
    if-eq v2, v3, :cond_4

    .line 193
    .line 194
    const-string v2, "/system/preloadFactoryResetOnly"

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_4
    new-instance v2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda0;

    .line 200
    .line 201
    invoke-direct {v2, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 205
    .line 206
    .line 207
    const/4 v0, 0x4

    .line 208
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_5

    .line 223
    .line 224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;

    .line 229
    .line 230
    new-instance v6, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;

    .line 231
    .line 232
    const/4 v7, 0x1

    .line 233
    invoke-direct {v6, p0, v5, v7}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 241
    .line 242
    .line 243
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    .line 245
    const-wide/16 v5, 0x12c

    .line 246
    .line 247
    invoke-interface {v2, v5, v6, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :catch_1
    move-exception v2

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v5, "Fail to prepare files, msg : "

    .line 255
    .line 256
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->removeInstalledPkgFromList()V

    .line 270
    .line 271
    .line 272
    const-string v2, "[CONFIRMED INSTALLING LIST]"

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_6

    .line 288
    .line 289
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;

    .line 294
    .line 295
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v6, "TO INSTALL :: "

    .line 302
    .line 303
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-nez v2, :cond_7

    .line 328
    .line 329
    const-string v0, "apk count is 0. call setDisabled()"

    .line 330
    .line 331
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_7

    .line 335
    .line 336
    :cond_7
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .line 344
    .line 345
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_8

    .line 356
    .line 357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;

    .line 362
    .line 363
    invoke-virtual {v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    new-instance v6, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;

    .line 368
    .line 369
    const/4 v7, 0x0

    .line 370
    invoke-direct {v6, p0, v5, v7}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/lang/Object;I)V

    .line 371
    .line 372
    .line 373
    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :catchall_0
    move-exception p0

    .line 382
    goto/16 :goto_9

    .line 383
    .line 384
    :catch_2
    move-exception p0

    .line 385
    goto :goto_8

    .line 386
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-eqz v4, :cond_b

    .line 395
    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    check-cast v4, Ljava/util/concurrent/Future;

    .line 401
    .line 402
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    check-cast v4, Landroid/content/pm/PackageInstaller$Session;

    .line 407
    .line 408
    if-eqz v4, :cond_9

    .line 409
    .line 410
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->startInstallSession(Landroid/content/pm/PackageInstaller$Session;)I

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-nez v4, :cond_a

    .line 415
    .line 416
    iget v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSuccessCount:I

    .line 417
    .line 418
    add-int/2addr v4, v3

    .line 419
    iput v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSuccessCount:I

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_a
    iget v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFailCount:I

    .line 423
    .line 424
    add-int/2addr v4, v3

    .line 425
    iput v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFailCount:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_b
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 429
    .line 430
    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 432
    .line 433
    new-instance v2, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;

    .line 434
    .line 435
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 439
    .line 440
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    const-string v2, "PrePackageInstaller Result. SUCCESS : "

    .line 444
    .line 445
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSuccessCount:I

    .line 449
    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v2, " FAIL : "

    .line 454
    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mFailCount:I

    .line 459
    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string v2, " SKIP : "

    .line 464
    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mSkipCount:I

    .line 469
    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    const-string v2, "PrePackageInstaller"

    .line 478
    .line 479
    invoke-static {v0, v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const-string v0, "installPreloadPackageList() --------------------- COMPLETE"

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->uninstallPackage()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    .line 491
    .line 492
    .line 493
    return-void

    .line 494
    :goto_8
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v3, "Fail to PrePackageInstall : "

    .line 500
    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 515
    .line 516
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 517
    .line 518
    .line 519
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    :goto_9
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 521
    .line 522
    .line 523
    throw p0
.end method

.method public uninstallPackage()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/system/etc/uninstall_preloadpkg.lst"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addUninstallPkgList(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "persist.sys.omc_support"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "true"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "mdc.sys.omc_etcpath"

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "/uninstall_preloadpkg.lst"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v2, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v4, "omcEtcPath : "

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->addUninstallPkgList(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v4, "deletePackage :"

    .line 100
    .line 101
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x2

    .line 118
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method
