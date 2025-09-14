.class public final Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;
.super Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCscAddedAPKList:Ljava/util/List;

.field public mCscInstallOnceAPKList:Ljava/util/List;

.field public mCscUninstallPKGList:Ljava/util/List;

.field public mCscUpdateAPKList:Ljava/util/List;

.field public mInstalledAppListDeviceInfo:Ljava/util/HashSet;

.field public mLoaded:Z


# direct methods
.method public static parsePackagesOrApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_4

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-le v4, v0, :cond_4

    .line 25
    .line 26
    :cond_1
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "apk"

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    const-string/jumbo v3, "package"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    :cond_3
    const/4 v2, 0x0

    .line 54
    const-string/jumbo v3, "name"

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final addInstallPackageList([Ljava/io/File;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_9

    .line 9
    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    new-instance v4, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;

    .line 13
    .line 14
    invoke-direct {v4, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getApkFileName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    :cond_0
    move v3, v1

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/util/List;

    .line 26
    .line 27
    check-cast v5, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalled(Ljava/io/File;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_7

    .line 44
    .line 45
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/util/List;

    .line 46
    .line 47
    check-cast v5, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalled(Ljava/io/File;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_7

    .line 64
    .line 65
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/util/List;

    .line 66
    .line 67
    check-cast v5, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->isInstalled(Ljava/io/File;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getFile()Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->getCachedPackageArchiveInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_6

    .line 103
    .line 104
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 105
    .line 106
    const-string/jumbo v5, "pkgInfo is null on isInstalledInHistory()"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_1
    move v3, v1

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallHistory:Ljava/util/Collection;

    .line 117
    .line 118
    check-cast v5, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    :goto_2
    if-nez v3, :cond_0

    .line 125
    .line 126
    :cond_7
    const/4 v3, 0x1

    .line 127
    :goto_3
    if-eqz v3, :cond_8

    .line 128
    .line 129
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mInstallPackageList:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_8
    invoke-virtual {v4}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->removeCacheFile()V

    .line 136
    .line 137
    .line 138
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_9
    return-void
.end method

.method public isInstalled(Ljava/io/File;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->getCachedPackageArchiveInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "pkgInfo is null"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "PackageManager can\'t search - "

    .line 38
    .line 39
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return v0
.end method

.method public loadChinaCSCConfig()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->loadConfigApkListInCsc()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "mCscAddedAPKList = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "mCscUninstallPKGList = "

    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "mCscInstallOnceAPKList = "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "mCscUpdateAPKList = "

    .line 78
    .line 79
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/util/List;

    .line 99
    .line 100
    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-gtz v0, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/util/List;

    .line 109
    .line 110
    check-cast v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-gtz v0, :cond_1

    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/util/List;

    .line 119
    .line 120
    check-cast v0, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-gtz v0, :cond_1

    .line 127
    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/util/List;

    .line 129
    .line 130
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_0

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    const-string p0, "empty apk list, call setDisabled"

    .line 140
    .line 141
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    const-string v0, "items are loaded."

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mLoaded:Z

    .line 152
    .line 153
    :goto_1
    return-void
.end method

.method public loadConfigApkListInCsc()V
    .locals 5

    .line 1
    const-string/jumbo v0, "mdc.sys.omc_etcpath"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "/sysconfig/chn_preload_package_list.xml"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string/jumbo v4, "omcPath = "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const-string v0, "No file is existed for ChnPreloadApkList"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, ""

    .line 43
    .line 44
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "Parsing the packages at "

    .line 47
    .line 48
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    const-string p0, "No XML file exists"

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_6

    .line 78
    :cond_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 83
    .line 84
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    :try_start_1
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->parsePreloadPackagesInternal(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_3

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto :goto_4

    .line 101
    :catch_2
    move-exception p0

    .line 102
    goto :goto_5

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    throw p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "Failed to parse PreloadApkList. IOException "

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "Failed to parse PreloadApkList. FileNotFoundException"

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v1, "Failed to parse PreloadApkList. XmlPullParserException "

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v2, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_6
    return-void
.end method

.method public final parsePreloadPackagesInternal(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eq v3, v1, :cond_7

    .line 15
    .line 16
    if-ne v3, v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-le v4, v2, :cond_7

    .line 23
    .line 24
    :cond_1
    if-eq v3, v0, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    if-ne v3, v4, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    sparse-switch v5, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :sswitch_0
    const-string v5, "install-once-apk"

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v4, v0

    .line 56
    goto :goto_1

    .line 57
    :sswitch_1
    const-string/jumbo v5, "update-apk"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 v4, 0x2

    .line 68
    goto :goto_1

    .line 69
    :sswitch_2
    const-string v5, "add-apk"

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move v4, v1

    .line 79
    goto :goto_1

    .line 80
    :sswitch_3
    const-string/jumbo v5, "remove-package"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 v4, 0x0

    .line 91
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    const-string v4, "Invalid element name: "

    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 101
    .line 102
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->parsePackagesOrApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscInstallOnceAPKList:Ljava/util/List;

    .line 111
    .line 112
    check-cast v4, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->parsePackagesOrApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUpdateAPKList:Ljava/util/List;

    .line 123
    .line 124
    check-cast v4, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->parsePackagesOrApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscAddedAPKList:Ljava/util/List;

    .line 135
    .line 136
    check-cast v4, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->parsePackagesOrApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/util/List;

    .line 148
    .line 149
    check-cast v4, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_7
    return-void

    .line 157
    :sswitch_data_0
    .sparse-switch
        -0x5069b403 -> :sswitch_3
        -0x4487d110 -> :sswitch_2
        -0x11b564e8 -> :sswitch_1
        -0x6f09f3e -> :sswitch_0
    .end sparse-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final prepareInstall()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->prepareSettings()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mIsUpgrade:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->loadChinaCSCConfig()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mLoaded:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mLogMsg:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "CHN - loadChinaCSCConfig - no items to load -> setDisabled"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->setDisabled()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v0, "fota - mount hidden area using persist values."

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "persist.sys.storage_preload"

    .line 32
    .line 33
    .line 34
    const-string v2, "1"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;->mCscUninstallPKGList:Ljava/util/List;

    .line 56
    .line 57
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .line 75
    :try_start_0
    const-string v3, "\\r\\n|\\r|\\n"

    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v4, "Failed to getApplicationInfo :"

    .line 94
    .line 95
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    :goto_1
    if-eqz v3, :cond_2

    .line 110
    .line 111
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_2

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "add to unInstallPackageList from csc xml pkg:"

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->out(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    :goto_2
    return-void
.end method

.method public final uninstallPackage()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->uninstallPackage()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mUninstallPackageList:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/install/ChnPrePackageInstaller;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
