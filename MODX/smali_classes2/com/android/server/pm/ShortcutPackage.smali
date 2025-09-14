.class public final Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mApiCallCount:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mIsAppSearchSchemaUpToDate:Z

.field public mLastKnownForegroundElapsedTime:J

.field public mLastReportedTime:J

.field public mLastResetTime:J

.field public final mPackageUid:I

.field public final mShareTargets:Ljava/util/ArrayList;

.field public final mShortcutRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

.field public final mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

.field public final mShortcutTypeRankAndTimeComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

.field public final mShortcuts:Landroid/util/ArrayMap;

.field public final mTransientShortcuts:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/android/server/pm/ShortcutPackageInfo;

    .line 2
    .line 3
    new-instance v5, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 26
    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v0, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 66
    .line 67
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 72
    .line 73
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    .line 78
    .line 79
    return-void
.end method

.method public static ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Shortcut ID="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " is hidden from launcher and may not be manipulated via APIs"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    return-void
.end method

.method public static ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eq v4, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x5

    .line 39
    if-eq v4, v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, "Invalid icon type in shortcut "

    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ". Bitmaps are not allowed in long-lived shortcuts. Use Resource icons, or Uri-based icons instead."

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string v0, "ShortcutService"

    .line 77
    .line 78
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public static ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Manifest shortcut ID="

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " may not be manipulated via APIs"

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public static incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, p2

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static loadFromFile(Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 11

    .line 1
    const-string v0, "ShortcutService"

    .line 2
    .line 3
    const-string v1, "Not found "

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    move-object v3, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v5, v3

    .line 45
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/4 v7, 0x1

    .line 50
    if-eq v6, v7, :cond_4

    .line 51
    .line 52
    const/4 v8, 0x2

    .line 53
    if-eq v6, v8, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    sget-boolean v9, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 65
    .line 66
    if-eqz v9, :cond_2

    .line 67
    .line 68
    const-string v9, "depth=%d type=%d name=%s"

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    filled-new-array {v10, v6, v8}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    if-ne v5, v7, :cond_3

    .line 90
    .line 91
    const-string/jumbo v6, "package"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_3

    .line 99
    .line 100
    invoke-static {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutUser;Lcom/android/modules/utils/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 110
    .line 111
    .line 112
    return-object v5

    .line 113
    :catch_1
    move-exception v1

    .line 114
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v5, "Failed to read file "

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v5, v2, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    .line 140
    .line 141
    .line 142
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    throw p0
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutUser;Lcom/android/modules/utils/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/server/pm/ShortcutPackage;

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 15
    .line 16
    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    const-string/jumbo v4, "schema-version"

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    int-to-long v6, v5

    .line 27
    invoke-static {p1, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    long-to-int v4, v6

    .line 32
    const/4 v6, 0x3

    .line 33
    if-ne v4, v6, :cond_0

    .line 34
    .line 35
    move v4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v4, v5

    .line 38
    :goto_0
    iput-boolean v4, v2, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 39
    .line 40
    const-string v4, "call-count"

    .line 41
    .line 42
    const-wide/16 v7, 0x0

    .line 43
    .line 44
    invoke-static {p1, v4, v7, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    long-to-int v4, v9

    .line 49
    iput v4, v2, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 50
    .line 51
    const-string v4, "last-reset"

    .line 52
    .line 53
    invoke-static {p1, v4, v7, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    iput-wide v7, v2, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eq v7, v0, :cond_b

    .line 68
    .line 69
    if-ne v7, v6, :cond_1

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-le v8, v4, :cond_b

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    :cond_1
    :goto_2
    const/4 v8, 0x2

    .line 82
    if-eq v7, v8, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    add-int/lit8 v10, v4, 0x1

    .line 94
    .line 95
    if-ne v7, v10, :cond_a

    .line 96
    .line 97
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    const v11, -0x72a5f22b

    .line 102
    .line 103
    .line 104
    if-eq v10, v11, :cond_5

    .line 105
    .line 106
    const v11, -0x642f3cc1

    .line 107
    .line 108
    .line 109
    if-eq v10, v11, :cond_4

    .line 110
    .line 111
    const v11, -0x146a23ba

    .line 112
    .line 113
    .line 114
    if-eq v10, v11, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    const-string/jumbo v10, "shortcut"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_6

    .line 125
    .line 126
    move v10, v0

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    const-string/jumbo v10, "share-target"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_6

    .line 136
    .line 137
    move v10, v8

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    const-string/jumbo v10, "package-info"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_6

    .line 147
    .line 148
    move v10, v5

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    :goto_3
    const/4 v10, -0x1

    .line 151
    :goto_4
    if-eqz v10, :cond_9

    .line 152
    .line 153
    if-eq v10, v0, :cond_8

    .line 154
    .line 155
    if-eq v10, v8, :cond_7

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_7
    iget-object v7, v2, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_8
    :try_start_1
    iget v7, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 169
    .line 170
    invoke-static {p1, v1, v7, p2}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    iget-object v8, v2, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 175
    .line 176
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catch_0
    move-exception v7

    .line 185
    goto :goto_5

    .line 186
    :catch_1
    move-exception p0

    .line 187
    goto :goto_6

    .line 188
    :goto_5
    :try_start_2
    const-string v8, "ShortcutService"

    .line 189
    .line 190
    const-string v9, "Failed parsing shortcut."

    .line 191
    .line 192
    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :goto_6
    throw p0

    .line 198
    :cond_9
    iget-object v7, v2, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 199
    .line 200
    invoke-virtual {v7, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_a
    :goto_7
    invoke-static {v7, v9}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_b
    monitor-exit v3

    .line 211
    return-object v2

    .line 212
    :goto_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    throw p0
.end method

.method public static parseShortcut(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .locals 54

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "categories"

    .line 4
    .line 5
    const-string/jumbo v3, "string-array"

    .line 6
    .line 7
    .line 8
    const-string v4, "extras"

    .line 9
    .line 10
    const-string v8, "intent"

    .line 11
    .line 12
    new-instance v10, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v11, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 23
    .line 24
    const-string v0, "id"

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v15

    .line 31
    const-string v0, "activity"

    .line 32
    .line 33
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    if-eqz v13, :cond_0

    .line 42
    .line 43
    move-object/from16 v17, v12

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object/from16 v17, v0

    .line 51
    .line 52
    :goto_0
    const-string/jumbo v0, "title"

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v19

    .line 59
    const-string/jumbo v0, "titleid"

    .line 60
    .line 61
    .line 62
    const-wide/16 v13, 0x0

    .line 63
    .line 64
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    long-to-int v5, v5

    .line 69
    const-string/jumbo v0, "titlename"

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v21

    .line 76
    const-string/jumbo v0, "splash-screen-theme-name"

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v42

    .line 83
    const-string/jumbo v0, "text"

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v22

    .line 90
    const-string/jumbo v0, "textid"

    .line 91
    .line 92
    .line 93
    move-object/from16 v20, v10

    .line 94
    .line 95
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    long-to-int v9, v9

    .line 100
    const-string/jumbo v0, "textname"

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v24

    .line 107
    const-string v0, "dmessage"

    .line 108
    .line 109
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v25

    .line 113
    const-string v0, "dmessageid"

    .line 114
    .line 115
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    long-to-int v7, v6

    .line 120
    const-string v0, "dmessagename"

    .line 121
    .line 122
    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v27

    .line 126
    const-string v0, "disabled-reason"

    .line 127
    .line 128
    move-object/from16 v26, v11

    .line 129
    .line 130
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    long-to-int v11, v10

    .line 135
    invoke-interface {v1, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    const-string v6, "Error parsing intent"

    .line 144
    .line 145
    const-string v12, "ShortcutService"

    .line 146
    .line 147
    if-nez v10, :cond_1

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    :try_start_0
    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    move-object v10, v0

    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    move-object v10, v0

    .line 158
    invoke-static {v12, v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .line 160
    .line 161
    :cond_1
    const/4 v10, 0x0

    .line 162
    :goto_1
    const-string/jumbo v0, "rank"

    .line 163
    .line 164
    .line 165
    move/from16 v30, v9

    .line 166
    .line 167
    move-object/from16 v31, v10

    .line 168
    .line 169
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 170
    .line 171
    .line 172
    move-result-wide v9

    .line 173
    long-to-int v9, v9

    .line 174
    const-string/jumbo v0, "timestamp"

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v32

    .line 181
    const-string v0, "flags"

    .line 182
    .line 183
    move/from16 v34, v9

    .line 184
    .line 185
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v9

    .line 189
    long-to-int v9, v9

    .line 190
    const-string v0, "icon-res"

    .line 191
    .line 192
    move/from16 v35, v9

    .line 193
    .line 194
    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v9

    .line 198
    long-to-int v9, v9

    .line 199
    const-string v0, "icon-resname"

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    invoke-interface {v1, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v36

    .line 206
    const-string v0, "bitmap-path"

    .line 207
    .line 208
    invoke-interface {v1, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v37

    .line 212
    const-string v0, "icon-uri"

    .line 213
    .line 214
    invoke-interface {v1, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v38

    .line 218
    const-string v0, "locus-id"

    .line 219
    .line 220
    invoke-interface {v1, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    const/4 v14, 0x0

    .line 229
    const/16 v41, 0x0

    .line 230
    .line 231
    const/16 v43, 0x0

    .line 232
    .line 233
    const/16 v44, 0x0

    .line 234
    .line 235
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    move/from16 v45, v9

    .line 240
    .line 241
    const/4 v9, 0x1

    .line 242
    if-eq v0, v9, :cond_3

    .line 243
    .line 244
    const/4 v9, 0x3

    .line 245
    if-ne v0, v9, :cond_2

    .line 246
    .line 247
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-le v9, v10, :cond_3

    .line 252
    .line 253
    :cond_2
    const/4 v9, 0x2

    .line 254
    goto :goto_3

    .line 255
    :cond_3
    move/from16 v47, v5

    .line 256
    .line 257
    move/from16 v48, v7

    .line 258
    .line 259
    move-object/from16 v23, v13

    .line 260
    .line 261
    move-object/from16 v49, v14

    .line 262
    .line 263
    move-object/from16 v7, v20

    .line 264
    .line 265
    move-object/from16 v5, v26

    .line 266
    .line 267
    const/4 v1, 0x0

    .line 268
    goto/16 :goto_14

    .line 269
    .line 270
    :goto_3
    if-eq v0, v9, :cond_4

    .line 271
    .line 272
    move/from16 v47, v5

    .line 273
    .line 274
    move/from16 v48, v7

    .line 275
    .line 276
    move/from16 v46, v10

    .line 277
    .line 278
    :pswitch_0
    move-object/from16 v23, v13

    .line 279
    .line 280
    move-object/from16 v49, v14

    .line 281
    .line 282
    move-object/from16 v7, v20

    .line 283
    .line 284
    move-object/from16 v5, v26

    .line 285
    .line 286
    :goto_4
    const/4 v1, 0x0

    .line 287
    goto/16 :goto_13

    .line 288
    .line 289
    :cond_4
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    move/from16 v46, v10

    .line 294
    .line 295
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    sget-boolean v47, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 300
    .line 301
    move/from16 v48, v7

    .line 302
    .line 303
    const-string v7, "  depth=%d type=%d name=%s"

    .line 304
    .line 305
    if-eqz v47, :cond_5

    .line 306
    .line 307
    move/from16 v47, v5

    .line 308
    .line 309
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    filled-new-array {v5, v0, v10}, [Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_5
    move/from16 v47, v5

    .line 330
    .line 331
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    const-string/jumbo v0, "name"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 338
    .line 339
    .line 340
    move-result v49

    .line 341
    sparse-switch v49, :sswitch_data_0

    .line 342
    .line 343
    .line 344
    :goto_6
    const/16 v49, -0x1

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :sswitch_0
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v49

    .line 351
    if-nez v49, :cond_6

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_6
    const/4 v5, 0x6

    .line 355
    goto :goto_7

    .line 356
    :sswitch_1
    const-string/jumbo v5, "map"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    if-nez v5, :cond_7

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_7
    const/4 v5, 0x5

    .line 367
    goto :goto_7

    .line 368
    :sswitch_2
    const-string/jumbo v5, "person"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-nez v5, :cond_8

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_8
    const/4 v5, 0x4

    .line 379
    :goto_7
    move/from16 v49, v5

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :sswitch_3
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-nez v5, :cond_9

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_9
    const/16 v49, 0x3

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :sswitch_4
    const-string v5, "intent-extras"

    .line 393
    .line 394
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-nez v5, :cond_a

    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_a
    const/16 v49, 0x2

    .line 402
    .line 403
    goto :goto_8

    .line 404
    :sswitch_5
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-nez v5, :cond_b

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_b
    const/16 v49, 0x1

    .line 412
    .line 413
    goto :goto_8

    .line 414
    :sswitch_6
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-nez v5, :cond_c

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_c
    const/16 v49, 0x0

    .line 422
    .line 423
    :goto_8
    packed-switch v49, :pswitch_data_0

    .line 424
    .line 425
    .line 426
    invoke-static {v9, v10}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const/4 v5, 0x0

    .line 430
    throw v5

    .line 431
    :pswitch_1
    const/4 v5, 0x0

    .line 432
    invoke-interface {v1, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const-string v7, "capability"

    .line 437
    .line 438
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_d

    .line 443
    .line 444
    const/4 v7, 0x1

    .line 445
    new-array v0, v7, [Ljava/lang/String;

    .line 446
    .line 447
    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    move-object/from16 v44, v0

    .line 452
    .line 453
    check-cast v44, Ljava/util/Map;

    .line 454
    .line 455
    :goto_9
    move/from16 v9, v45

    .line 456
    .line 457
    move/from16 v10, v46

    .line 458
    .line 459
    move/from16 v5, v47

    .line 460
    .line 461
    move/from16 v7, v48

    .line 462
    .line 463
    goto/16 :goto_2

    .line 464
    .line 465
    :cond_d
    move-object v1, v5

    .line 466
    move-object/from16 v23, v13

    .line 467
    .line 468
    move-object/from16 v49, v14

    .line 469
    .line 470
    move-object/from16 v7, v20

    .line 471
    .line 472
    move-object/from16 v5, v26

    .line 473
    .line 474
    goto/16 :goto_13

    .line 475
    .line 476
    :pswitch_2
    const/4 v5, 0x0

    .line 477
    invoke-interface {v1, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-string/jumbo v9, "uri"

    .line 482
    .line 483
    .line 484
    invoke-interface {v1, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    const-string v10, "key"

    .line 489
    .line 490
    invoke-interface {v1, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    const-string v5, "is-bot"

    .line 495
    .line 496
    move-object/from16 v23, v13

    .line 497
    .line 498
    move-object/from16 v49, v14

    .line 499
    .line 500
    const-wide/16 v13, 0x0

    .line 501
    .line 502
    invoke-static {v1, v5, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 503
    .line 504
    .line 505
    move-result-wide v39

    .line 506
    const-wide/16 v50, 0x1

    .line 507
    .line 508
    cmp-long v5, v39, v50

    .line 509
    .line 510
    if-nez v5, :cond_e

    .line 511
    .line 512
    const/4 v5, 0x1

    .line 513
    goto :goto_a

    .line 514
    :cond_e
    const/4 v5, 0x0

    .line 515
    :goto_a
    const-string v7, "is-important"

    .line 516
    .line 517
    invoke-static {v1, v7, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 518
    .line 519
    .line 520
    move-result-wide v52

    .line 521
    cmp-long v7, v52, v50

    .line 522
    .line 523
    if-nez v7, :cond_f

    .line 524
    .line 525
    const/4 v7, 0x1

    .line 526
    goto :goto_b

    .line 527
    :cond_f
    const/4 v7, 0x0

    .line 528
    :goto_b
    new-instance v13, Landroid/app/Person$Builder;

    .line 529
    .line 530
    invoke-direct {v13}, Landroid/app/Person$Builder;-><init>()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v13, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0, v9}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v0, v10}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v0, v5}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v0, v7}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v13}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    move-object/from16 v5, v26

    .line 557
    .line 558
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-object/from16 v7, v20

    .line 562
    .line 563
    goto/16 :goto_4

    .line 564
    .line 565
    :pswitch_3
    move-object/from16 v23, v13

    .line 566
    .line 567
    move-object/from16 v49, v14

    .line 568
    .line 569
    move-object/from16 v5, v26

    .line 570
    .line 571
    const/4 v7, 0x0

    .line 572
    invoke-interface {v1, v7, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-eqz v0, :cond_11

    .line 581
    .line 582
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-static {v0, v3, v7}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    new-instance v7, Landroid/util/ArraySet;

    .line 591
    .line 592
    array-length v9, v0

    .line 593
    invoke-direct {v7, v9}, Landroid/util/ArraySet;-><init>(I)V

    .line 594
    .line 595
    .line 596
    const/4 v9, 0x0

    .line 597
    :goto_c
    array-length v10, v0

    .line 598
    if-ge v9, v10, :cond_10

    .line 599
    .line 600
    aget-object v10, v0, v9

    .line 601
    .line 602
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    const/4 v10, 0x1

    .line 606
    add-int/2addr v9, v10

    .line 607
    goto :goto_c

    .line 608
    :cond_10
    move-object/from16 v26, v5

    .line 609
    .line 610
    move-object/from16 v41, v7

    .line 611
    .line 612
    :goto_d
    move-object/from16 v13, v23

    .line 613
    .line 614
    move/from16 v9, v45

    .line 615
    .line 616
    move/from16 v10, v46

    .line 617
    .line 618
    move/from16 v5, v47

    .line 619
    .line 620
    move/from16 v7, v48

    .line 621
    .line 622
    move-object/from16 v14, v49

    .line 623
    .line 624
    goto/16 :goto_2

    .line 625
    .line 626
    :cond_11
    move-object v1, v7

    .line 627
    move-object/from16 v7, v20

    .line 628
    .line 629
    goto/16 :goto_13

    .line 630
    .line 631
    :pswitch_4
    move-object/from16 v23, v13

    .line 632
    .line 633
    move-object/from16 v5, v26

    .line 634
    .line 635
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 636
    .line 637
    .line 638
    move-result-object v14

    .line 639
    goto/16 :goto_9

    .line 640
    .line 641
    :pswitch_5
    move-object/from16 v23, v13

    .line 642
    .line 643
    move-object/from16 v49, v14

    .line 644
    .line 645
    move-object/from16 v5, v26

    .line 646
    .line 647
    const-string v0, "intent-base"

    .line 648
    .line 649
    const/4 v9, 0x0

    .line 650
    invoke-interface {v1, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    if-nez v9, :cond_12

    .line 659
    .line 660
    const/4 v9, 0x0

    .line 661
    :try_start_1
    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    .line 663
    .line 664
    move-result-object v0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 665
    goto :goto_f

    .line 666
    :catch_1
    move-exception v0

    .line 667
    move-object v13, v0

    .line 668
    invoke-static {v12, v6, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    .line 670
    .line 671
    goto :goto_e

    .line 672
    :cond_12
    const/4 v9, 0x0

    .line 673
    :goto_e
    const/4 v0, 0x0

    .line 674
    :goto_f
    if-nez v0, :cond_13

    .line 675
    .line 676
    new-instance v0, Landroid/content/Intent;

    .line 677
    .line 678
    const-string v13, "android.intent.action.VIEW"

    .line 679
    .line 680
    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    :cond_13
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 684
    .line 685
    .line 686
    move-result v13

    .line 687
    :goto_10
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 688
    .line 689
    .line 690
    move-result v14

    .line 691
    const/4 v10, 0x1

    .line 692
    if-eq v14, v10, :cond_19

    .line 693
    .line 694
    const/4 v9, 0x3

    .line 695
    if-ne v14, v9, :cond_14

    .line 696
    .line 697
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 698
    .line 699
    .line 700
    move-result v9

    .line 701
    if-le v9, v13, :cond_15

    .line 702
    .line 703
    :cond_14
    const/4 v9, 0x2

    .line 704
    goto :goto_11

    .line 705
    :cond_15
    move-object/from16 v7, v20

    .line 706
    .line 707
    const/4 v1, 0x0

    .line 708
    goto :goto_12

    .line 709
    :goto_11
    if-eq v14, v9, :cond_16

    .line 710
    .line 711
    const/4 v9, 0x0

    .line 712
    goto :goto_10

    .line 713
    :cond_16
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 714
    .line 715
    .line 716
    move-result v9

    .line 717
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    sget-boolean v26, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 722
    .line 723
    if-eqz v26, :cond_17

    .line 724
    .line 725
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 730
    .line 731
    .line 732
    move-result-object v14

    .line 733
    filled-new-array {v1, v14, v10}, [Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    :cond_17
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-eqz v1, :cond_18

    .line 752
    .line 753
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-static {v0, v1}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 758
    .line 759
    .line 760
    const/4 v9, 0x0

    .line 761
    move-object/from16 v1, p0

    .line 762
    .line 763
    goto :goto_10

    .line 764
    :cond_18
    invoke-static {v9, v10}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    .line 765
    .line 766
    .line 767
    const/4 v1, 0x0

    .line 768
    throw v1

    .line 769
    :cond_19
    const/4 v1, 0x0

    .line 770
    move-object/from16 v7, v20

    .line 771
    .line 772
    :goto_12
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    :goto_13
    move-object/from16 v1, p0

    .line 776
    .line 777
    move-object/from16 v26, v5

    .line 778
    .line 779
    move-object/from16 v20, v7

    .line 780
    .line 781
    goto/16 :goto_d

    .line 782
    .line 783
    :pswitch_6
    move-object/from16 v23, v13

    .line 784
    .line 785
    move-object/from16 v49, v14

    .line 786
    .line 787
    move-object/from16 v7, v20

    .line 788
    .line 789
    move-object/from16 v5, v26

    .line 790
    .line 791
    const/4 v1, 0x0

    .line 792
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 793
    .line 794
    .line 795
    move-result-object v43

    .line 796
    move-object/from16 v1, p0

    .line 797
    .line 798
    goto/16 :goto_9

    .line 799
    .line 800
    :goto_14
    if-eqz v31, :cond_1a

    .line 801
    .line 802
    move-object/from16 v2, v31

    .line 803
    .line 804
    move-object/from16 v14, v49

    .line 805
    .line 806
    invoke-static {v2, v14}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    :cond_1a
    if-nez v11, :cond_1b

    .line 816
    .line 817
    and-int/lit8 v0, v35, 0x40

    .line 818
    .line 819
    if-eqz v0, :cond_1b

    .line 820
    .line 821
    const/16 v39, 0x1

    .line 822
    .line 823
    goto :goto_15

    .line 824
    :cond_1b
    move/from16 v39, v11

    .line 825
    .line 826
    :goto_15
    if-eqz p3, :cond_1c

    .line 827
    .line 828
    move/from16 v2, v35

    .line 829
    .line 830
    or-int/lit16 v0, v2, 0x1000

    .line 831
    .line 832
    goto :goto_16

    .line 833
    :cond_1c
    move/from16 v2, v35

    .line 834
    .line 835
    move v0, v2

    .line 836
    :goto_16
    if-nez v23, :cond_1d

    .line 837
    .line 838
    move-object v12, v1

    .line 839
    goto :goto_17

    .line 840
    :cond_1d
    new-instance v12, Landroid/content/LocusId;

    .line 841
    .line 842
    move-object/from16 v1, v23

    .line 843
    .line 844
    invoke-direct {v12, v1}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    :goto_17
    new-instance v1, Landroid/content/pm/ShortcutInfo;

    .line 848
    .line 849
    move-object v13, v1

    .line 850
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 851
    .line 852
    .line 853
    move-result v2

    .line 854
    new-array v2, v2, [Landroid/content/Intent;

    .line 855
    .line 856
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    move-object/from16 v29, v2

    .line 861
    .line 862
    check-cast v29, [Landroid/content/Intent;

    .line 863
    .line 864
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    new-array v2, v2, [Landroid/app/Person;

    .line 869
    .line 870
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    move-object/from16 v40, v2

    .line 875
    .line 876
    check-cast v40, [Landroid/app/Person;

    .line 877
    .line 878
    const/16 v18, 0x0

    .line 879
    .line 880
    move/from16 v14, p2

    .line 881
    .line 882
    move-object/from16 v16, p1

    .line 883
    .line 884
    move/from16 v20, v47

    .line 885
    .line 886
    move/from16 v23, v30

    .line 887
    .line 888
    move/from16 v26, v48

    .line 889
    .line 890
    move-object/from16 v28, v41

    .line 891
    .line 892
    move/from16 v30, v34

    .line 893
    .line 894
    move-object/from16 v31, v43

    .line 895
    .line 896
    move/from16 v34, v0

    .line 897
    .line 898
    move/from16 v35, v45

    .line 899
    .line 900
    move-object/from16 v41, v12

    .line 901
    .line 902
    move-object/from16 v43, v44

    .line 903
    .line 904
    invoke-direct/range {v13 .. v43}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    .line 905
    .line 906
    .line 907
    return-object v1

    .line 908
    nop

    .line 909
    :sswitch_data_0
    .sparse-switch
        -0x4cd5119d -> :sswitch_6
        -0x468ec964 -> :sswitch_5
        -0x3e3f454c -> :sswitch_4
        -0x3d122a63 -> :sswitch_3
        -0x3b1c64ab -> :sswitch_2
        0x1a55c -> :sswitch_1
        0x4d47461c -> :sswitch_0
    .end sparse-switch

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static runAsSystem(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method public final addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const v2, 0x60004002

    .line 33
    .line 34
    .line 35
    and-int/2addr v1, v2

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public final adjustRanks()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;

    .line 10
    .line 11
    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    add-int/lit8 v4, v4, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 36
    .line 37
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x0

    .line 45
    move v8, v7

    .line 46
    :goto_1
    if-ge v7, v6, :cond_3

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 53
    .line 54
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_0

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_0
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-nez v10, :cond_1

    .line 66
    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v11, "Non-dynamic shortcut found. "

    .line 70
    .line 71
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-virtual {v0, v9, v10}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    add-int/lit8 v10, v8, 0x1

    .line 91
    .line 92
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eq v11, v8, :cond_2

    .line 97
    .line 98
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    new-instance v12, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;

    .line 103
    .line 104
    invoke-direct {v12, v1, v2, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;-><init>(JI)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v11, v9, v12}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    move v8, v10

    .line 111
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method

.method public final deleteAllDynamicShortcuts()Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    sub-int/2addr v3, v4

    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    if-ltz v3, :cond_1

    .line 23
    .line 24
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_0

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v5}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 51
    .line 52
    .line 53
    move v6, v4

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    if-eqz v6, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    const/4 p0, 0x0

    .line 84
    return-object p0

    .line 85
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p0
.end method

.method public final deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-ne p2, v2, :cond_1

    .line 9
    .line 10
    move v0, v1

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "disable and disabledReason disagree: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " vs "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_8

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    if-eqz p4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    if-nez p4, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    if-nez p3, :cond_3

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    if-nez p6, :cond_5

    .line 64
    .line 65
    filled-new-array {p1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-nez p4, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    new-instance p4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;

    .line 81
    .line 82
    const/4 p6, 0x0

    .line 83
    invoke-direct {p4, p0, p3, p6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {p4}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-nez p3, :cond_7

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-eqz p3, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;

    .line 111
    .line 112
    invoke-direct {p3, p0, p2, p5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/ShortcutPackage;ZI)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    :goto_3
    return-object v1
.end method

.method public final enforceShortcutCountsBeforeOperation(ILjava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, p0, v1, p1, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v2, v3

    .line 25
    :goto_0
    if-ltz v2, :cond_6

    .line 26
    .line 27
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x2

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    if-eq p1, v6, :cond_5

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const-string v5, "Activity must not be null at this point"

    .line 44
    .line 45
    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    if-ne p1, v6, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    if-ne p1, v6, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    const/4 v4, -0x1

    .line 88
    invoke-static {v1, v6, v4}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-static {v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    sub-int/2addr p0, v3

    .line 102
    :goto_2
    if-ltz p0, :cond_8

    .line 103
    .line 104
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget p2, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 115
    .line 116
    if-gt p1, p2, :cond_7

    .line 117
    .line 118
    add-int/lit8 p0, p0, -0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string p1, "Max number of dynamic shortcuts exceeded"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_8
    return-void
.end method

.method public final ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "findAll() returned empty results because "

    .line 10
    .line 11
    const-string p1, " isn\'t installed yet"

    .line 12
    .line 13
    const-string p2, "ShortcutService"

    .line 14
    .line 15
    invoke-static {p0, v1, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 22
    .line 23
    if-nez p4, :cond_1

    .line 24
    .line 25
    const/4 p5, 0x0

    .line 26
    :goto_0
    move-object v6, p5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 29
    .line 30
    invoke-virtual {v0, v2, p5, p4}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    invoke-virtual {p5, v2, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(ILjava/lang/String;)Landroid/util/ArraySet;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    new-instance p5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;

    .line 40
    .line 41
    move-object v0, p5

    .line 42
    move-object v1, p0

    .line 43
    move-object v2, p1

    .line 44
    move-object v3, p2

    .line 45
    move v4, p3

    .line 46
    move-object v5, p4

    .line 47
    move v7, p6

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/content/pm/ShortcutInfo;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final forEachShortcut(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final forEachShortcutMutate(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final forEachShortcutStopWhen(Ljava/util/function/Function;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 21
    .line 22
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final forceDeleteShortcutInner(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 15
    .line 16
    .line 17
    const p0, 0x60004023

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 21
    .line 22
    iget v0, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x1

    .line 62
    if-lt v3, v0, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 65
    .line 66
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-lt v3, v0, :cond_1

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v3, v4

    .line 80
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_0

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p0, " has published "

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p0, " manifest shortcuts across different activities."

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    new-array v0, v4, [Landroid/content/pm/ShortcutInfo;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    aput-object p1, v0, v1

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0
.end method

.method public final fromAppSearch()Lcom/android/internal/infra/AndroidFuture;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutUser;->getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 47
    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/pm/ShortcutPackage;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v3

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 64
    iput-boolean v3, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 65
    .line 66
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :catch_0
    move-exception v1

    .line 76
    :try_start_4
    const-string v3, "ShortcutService"

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "Failed to create app search session. pkg="

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v5, " user="

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 99
    .line 100
    iget p0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 101
    .line 102
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v3, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-object p0, v2

    .line 116
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :goto_3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-object p0, v2

    .line 126
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 127
    .line 128
    return-object v2

    .line 129
    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public getAllShareTargetsForTest()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public getAllShortcutsForTest()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final getApiCallCount(Z)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->get(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    cmp-long v1, v4, v1

    .line 23
    .line 24
    if-ltz v1, :cond_0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 33
    .line 34
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 35
    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 44
    .line 45
    .line 46
    iget-object p1, v0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    const-wide/32 v6, 0x54a48e00

    .line 57
    .line 58
    .line 59
    cmp-long p1, v4, v6

    .line 60
    .line 61
    if-ltz p1, :cond_2

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move p1, v3

    .line 66
    :goto_0
    const-string v0, "ShortcutService"

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 71
    .line 72
    cmp-long p1, v6, v4

    .line 73
    .line 74
    if-lez p1, :cond_3

    .line 75
    .line 76
    const-string p1, "Clock rewound"

    .line 77
    .line 78
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iput-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 82
    .line 83
    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 84
    .line 85
    return v3

    .line 86
    :cond_3
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 87
    .line 88
    cmp-long p1, v6, v1

    .line 89
    .line 90
    if-gez p1, :cond_5

    .line 91
    .line 92
    sget-boolean p1, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 109
    .line 110
    filled-new-array {v6, p1, v4, v5}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v4, "%s: last reset=%d, now=%d, last=%d: resetting"

    .line 115
    .line 116
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_4
    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 124
    .line 125
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 126
    .line 127
    :cond_5
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 128
    .line 129
    return p0
.end method

.method public final getMatchingShareTargets(Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_2

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/pm/ShareTargetInfo;

    .line 26
    .line 27
    iget-object v5, v4, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    .line 28
    .line 29
    array-length v6, v5

    .line 30
    move v7, v2

    .line 31
    :goto_1
    if-ge v7, v6, :cond_1

    .line 32
    .line 33
    aget-object v8, v5, v7

    .line 34
    .line 35
    iget-object v8, v8, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-object p0

    .line 69
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v5, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/16 v6, 0x9

    .line 83
    .line 84
    move-object v3, p0

    .line 85
    move-object v4, p1

    .line 86
    move-object v7, p2

    .line 87
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 88
    .line 89
    .line 90
    new-instance p2, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    move v3, v2

    .line 96
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ge v3, v4, :cond_8

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_7

    .line 113
    .line 114
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_4
    move v5, v2

    .line 122
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-ge v5, v6, :cond_7

    .line 127
    .line 128
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Lcom/android/server/pm/ShareTargetInfo;

    .line 133
    .line 134
    move v7, v2

    .line 135
    :goto_5
    iget-object v8, v6, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    .line 136
    .line 137
    array-length v9, v8

    .line 138
    if-ge v7, v9, :cond_6

    .line 139
    .line 140
    aget-object v8, v8, v7

    .line 141
    .line 142
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_5

    .line 147
    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    new-instance v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 155
    .line 156
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 161
    .line 162
    new-instance v7, Landroid/content/ComponentName;

    .line 163
    .line 164
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v6, v6, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 167
    .line 168
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v4, v5, v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    monitor-exit v0

    .line 181
    return-object p2

    .line 182
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    throw p0
.end method

.method public final getOwnerUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSearchSpec()Landroid/app/appsearch/SearchSpec;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Shortcut"

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setTermMatch(I)Landroid/app/appsearch/SearchSpec$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final getShortcutPackageItemFile()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    iget v1, v1, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "packages"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, ".xml"

    .line 27
    .line 28
    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public getTopShortcutsFromPersistence(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final isAppSearchEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService;->mIsAppSearchEnabled:Z

    .line 6
    .line 7
    return p0
.end method

.method public final isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    new-array p2, p2, [Landroid/content/pm/ShortcutInfo;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    aput-object p1, p2, p3

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final onRestored(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "pushDynamicShortcuts() cannot publish disabled shortcuts"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v9, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 40
    .line 41
    iget v3, v2, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-le v5, v3, :cond_1

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, "Error pushing shortcut. There are already "

    .line 68
    .line 69
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v6, " shortcuts."

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual {v2, v5, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v2, v3, :cond_3

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 101
    .line 102
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    sub-int/2addr v3, v0

    .line 106
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    const-string p0, "ShortcutService"

    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "Failed to remove manifest shortcut while pushing dynamic shortcut "

    .line 123
    .line 124
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return v0

    .line 142
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    const/4 v7, 0x0

    .line 152
    move-object v2, p0

    .line 153
    move v6, v0

    .line 154
    move v8, v0

    .line 155
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    if-eqz p2, :cond_3

    .line 160
    .line 161
    move p2, v0

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    move p2, v9

    .line 164
    :goto_0
    if-eqz v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {v1, p1, v9}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const v2, 0x60004002

    .line 174
    .line 175
    .line 176
    and-int/2addr v1, v2

    .line 177
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 178
    .line 179
    .line 180
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 193
    .line 194
    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    monitor-exit v0

    .line 205
    goto :goto_1

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    throw p0

    .line 209
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_7

    .line 217
    .line 218
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;

    .line 219
    .line 220
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 224
    .line 225
    .line 226
    :cond_7
    return p2
.end method

.method public final refreshPinnedFlags()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 7
    .line 8
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v2, v3, p0, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/util/List;

    .line 58
    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    invoke-direct {v1, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 81
    .line 82
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p0
.end method

.method public final removeOrphans()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v2, v1

    .line 27
    :goto_0
    if-ltz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method public final reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:J

    .line 13
    .line 14
    sub-long v4, v1, v4

    .line 15
    .line 16
    iget v3, v3, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 17
    .line 18
    int-to-long v6, v3

    .line 19
    cmp-long v3, v4, v6

    .line 20
    .line 21
    if-lez v3, :cond_2

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:J

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 32
    .line 33
    check-cast p1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const/16 v7, 0x8

    .line 50
    .line 51
    invoke-direct {v4, v7, v5, v6}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, v4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 67
    .line 68
    invoke-virtual {p1, p0, v4}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    const-string p0, "UsageStatsService"

    .line 73
    .line 74
    const-string p1, "Event reported without a package name or a shortcut ID"

    .line 75
    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    :goto_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_2
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0
.end method

.method public final rescanPackageIfNeeded(ZZ)Z
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 4
    .line 5
    iget-object v9, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    iget-object v0, v9, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const/16 v3, 0xe

    .line 14
    .line 15
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 18
    .line 19
    iget-object v4, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iget v5, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-virtual {v0, v4, v5, v10}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v9, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 31
    .line 32
    .line 33
    return v10

    .line 34
    :cond_0
    const/4 v11, 0x1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    :try_start_1
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 40
    .line 41
    iget-wide v5, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    cmp-long v0, v5, v12

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 52
    .line 53
    iget-wide v5, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 54
    .line 55
    iget-wide v12, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 56
    .line 57
    cmp-long v0, v5, v12

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 64
    .line 65
    new-instance v5, Ljava/util/ArrayList;

    .line 66
    .line 67
    const/4 v6, 0x4

    .line 68
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-array v6, v11, [Z

    .line 72
    .line 73
    new-instance v7, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;

    .line 74
    .line 75
    invoke-direct {v7, v8, v5, v0, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v7}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 79
    .line 80
    .line 81
    aget-boolean v0, v6, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    xor-int/2addr v0, v11

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    invoke-virtual {v9, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 87
    .line 88
    .line 89
    return v10

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto/16 :goto_11

    .line 92
    .line 93
    :cond_1
    invoke-virtual {v9, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 94
    .line 95
    .line 96
    iget-object v5, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v5

    .line 99
    const/4 v12, 0x0

    .line 100
    :try_start_2
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    :try_start_3
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 109
    .line 110
    iget-object v2, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 111
    .line 112
    iget v3, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 113
    .line 114
    iget-object v6, v8, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-static {v0, v2, v3, v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    move-object v13, v0

    .line 121
    goto :goto_1

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    goto/16 :goto_10

    .line 124
    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    move v1, v10

    .line 129
    :goto_0
    :try_start_4
    const-string v2, "ShortcutService"

    .line 130
    .line 131
    const-string v3, "Failed to load shortcuts from AndroidManifest.xml."

    .line 132
    .line 133
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    move-object v13, v12

    .line 137
    :goto_1
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    if-nez v13, :cond_2

    .line 139
    .line 140
    move v0, v10

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    :goto_2
    sget-boolean v2, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 147
    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    const-string v3, "ShortcutService"

    .line 151
    .line 152
    const-string v5, "Package %s has %d manifest shortcut(s), and %d share target(s)"

    .line 153
    .line 154
    iget-object v6, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    filled-new-array {v6, v7, v1}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_3
    if-eqz p1, :cond_4

    .line 176
    .line 177
    if-nez v0, :cond_4

    .line 178
    .line 179
    return v10

    .line 180
    :cond_4
    if-eqz v2, :cond_6

    .line 181
    .line 182
    const-string v0, "ShortcutService"

    .line 183
    .line 184
    const-string v1, "Package %s %s, version %d -> %d"

    .line 185
    .line 186
    iget-object v2, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 187
    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    const-string v3, "added"

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    const-string/jumbo v3, "updated"

    .line 194
    .line 195
    .line 196
    :goto_3
    iget-object v5, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 197
    .line 198
    iget-wide v5, v5, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 199
    .line 200
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 205
    .line 206
    .line 207
    move-result-wide v6

    .line 208
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_6
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 229
    .line 230
    .line 231
    move-result-wide v1

    .line 232
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 233
    .line 234
    iget-wide v1, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 235
    .line 236
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 237
    .line 238
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 239
    .line 240
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 241
    .line 242
    const v2, 0x8000

    .line 243
    .line 244
    .line 245
    and-int/2addr v1, v2

    .line 246
    const/4 v2, 0x1

    .line 247
    if-eqz v1, :cond_7

    .line 248
    .line 249
    move v1, v2

    .line 250
    goto :goto_4

    .line 251
    :cond_7
    move v1, v10

    .line 252
    :goto_4
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 253
    .line 254
    iput-boolean v2, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 255
    .line 256
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 257
    .line 258
    iget-wide v0, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 259
    .line 260
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;

    .line 261
    .line 262
    invoke-direct {v2, v8, v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutPackage;J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 266
    .line 267
    .line 268
    if-nez p1, :cond_8

    .line 269
    .line 270
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 271
    .line 272
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 273
    .line 274
    iget-object v1, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 275
    .line 276
    iget v2, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 277
    .line 278
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    invoke-direct {v1, v8, v9, v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 289
    .line 290
    .line 291
    :cond_8
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 292
    .line 293
    if-eqz v0, :cond_9

    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    if-nez v13, :cond_9

    .line 302
    .line 303
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 304
    .line 305
    iget v1, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 306
    .line 307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 308
    .line 309
    .line 310
    move-result-wide v2

    .line 311
    :try_start_5
    iget-object v4, v9, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 312
    .line 313
    const-wide/16 v5, 0x0

    .line 314
    .line 315
    invoke-interface {v4, v0, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 319
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :catchall_2
    move-exception v0

    .line 324
    goto :goto_6

    .line 325
    :catch_2
    move-exception v0

    .line 326
    :try_start_6
    const-string v1, "ShortcutService"

    .line 327
    .line 328
    const-string v4, "RemoteException"

    .line 329
    .line 330
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 331
    .line 332
    .line 333
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    .line 335
    .line 336
    move-object v0, v12

    .line 337
    :goto_5
    if-nez v0, :cond_9

    .line 338
    .line 339
    const-string v0, "ShortcutService"

    .line 340
    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    iget-object v2, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 347
    .line 348
    const-string v3, " is installed on SD Card but not scanned yet. We don\'t want to republish."

    .line 349
    .line 350
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_b

    .line 354
    .line 355
    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_9
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 360
    .line 361
    const-string v1, "ShortcutService"

    .line 362
    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v2, "Package "

    .line 368
    .line 369
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v2, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 373
    .line 374
    const-string v3, ": publishing manifest shortcuts"

    .line 375
    .line 376
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_a
    new-instance v0, Landroid/util/ArraySet;

    .line 380
    .line 381
    invoke-direct {v0, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 382
    .line 383
    .line 384
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    invoke-direct {v2, v3, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;-><init>(ILandroid/util/ArraySet;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v8, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 391
    .line 392
    .line 393
    if-eqz v13, :cond_f

    .line 394
    .line 395
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    move v3, v10

    .line 400
    :goto_7
    if-ge v3, v2, :cond_f

    .line 401
    .line 402
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 407
    .line 408
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    xor-int/2addr v5, v11

    .line 413
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-virtual {v8, v6}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    if-eqz v7, :cond_c

    .line 422
    .line 423
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    .line 424
    .line 425
    .line 426
    move-result v14

    .line 427
    if-nez v14, :cond_b

    .line 428
    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    const-string v6, "Shortcut with ID="

    .line 432
    .line 433
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v4, " exists but is not from AndroidManifest.xml, not updating."

    .line 444
    .line 445
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_b
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-eqz v7, :cond_c

    .line 461
    .line 462
    const/4 v7, 0x2

    .line 463
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 464
    .line 465
    .line 466
    move v7, v11

    .line 467
    goto :goto_8

    .line 468
    :cond_c
    move v7, v10

    .line 469
    :goto_8
    if-eqz v5, :cond_d

    .line 470
    .line 471
    if-nez v7, :cond_d

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_d
    invoke-virtual {v8, v4}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 475
    .line 476
    .line 477
    if-nez v5, :cond_e

    .line 478
    .line 479
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    if-nez v4, :cond_e

    .line 484
    .line 485
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    :cond_e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 489
    .line 490
    goto :goto_7

    .line 491
    :cond_f
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-nez v1, :cond_11

    .line 496
    .line 497
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    sub-int/2addr v1, v11

    .line 502
    move v14, v1

    .line 503
    :goto_a
    if-ltz v14, :cond_10

    .line 504
    .line 505
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    move-object v15, v1

    .line 510
    check-cast v15, Ljava/lang/String;

    .line 511
    .line 512
    const/4 v3, 0x1

    .line 513
    const/4 v7, 0x0

    .line 514
    const/4 v4, 0x1

    .line 515
    const/4 v5, 0x0

    .line 516
    const/4 v6, 0x2

    .line 517
    move-object/from16 v1, p0

    .line 518
    .line 519
    move-object v2, v15

    .line 520
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 521
    .line 522
    .line 523
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    .line 524
    .line 525
    const/4 v2, 0x0

    .line 526
    invoke-direct {v1, v8, v12, v10, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;II)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v8, v15, v12, v1}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 530
    .line 531
    .line 532
    add-int/lit8 v14, v14, -0x1

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 536
    .line 537
    .line 538
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 539
    .line 540
    .line 541
    :goto_b
    if-eqz v13, :cond_15

    .line 542
    .line 543
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 544
    .line 545
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 546
    .line 547
    iget v10, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 548
    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    .line 550
    .line 551
    .line 552
    move-result-object v13

    .line 553
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    sub-int/2addr v1, v11

    .line 558
    move v14, v1

    .line 559
    :goto_c
    if-ltz v14, :cond_15

    .line 560
    .line 561
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    move-object v15, v1

    .line 566
    check-cast v15, Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-gt v1, v10, :cond_12

    .line 573
    .line 574
    goto :goto_f

    .line 575
    :cond_12
    iget-object v1, v8, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 576
    .line 577
    invoke-static {v15, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    sub-int/2addr v1, v11

    .line 585
    move v7, v1

    .line 586
    :goto_d
    if-lt v7, v10, :cond_14

    .line 587
    .line 588
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 593
    .line 594
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-eqz v2, :cond_13

    .line 599
    .line 600
    const-string v1, "Found manifest shortcuts in excess list."

    .line 601
    .line 602
    invoke-virtual {v0, v1, v12}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    .line 604
    .line 605
    move/from16 v16, v7

    .line 606
    .line 607
    goto :goto_e

    .line 608
    :cond_13
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    const/4 v3, 0x0

    .line 613
    const/4 v4, 0x0

    .line 614
    const/4 v6, 0x0

    .line 615
    move-object/from16 v1, p0

    .line 616
    .line 617
    move v5, v11

    .line 618
    move/from16 v16, v7

    .line 619
    .line 620
    move v7, v11

    .line 621
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 622
    .line 623
    .line 624
    :goto_e
    add-int/lit8 v7, v16, -0x1

    .line 625
    .line 626
    goto :goto_d

    .line 627
    :cond_14
    :goto_f
    add-int/lit8 v14, v14, -0x1

    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_15
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v9, v8, v12, v12}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 634
    .line 635
    .line 636
    return v11

    .line 637
    :goto_10
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 638
    throw v0

    .line 639
    :goto_11
    invoke-virtual {v9, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 640
    .line 641
    .line 642
    throw v0
.end method

.method public final saveShortcut(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    iget-object v2, v2, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move p4, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p4, 0x1

    .line 6
    :goto_1
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_4
    const/4 v2, 0x0

    .line 8
    const-string/jumbo v3, "shortcut"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    const-string v4, "id"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 12
    :goto_2
    const-string/jumbo v4, "title"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "titleid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 14
    const-string/jumbo v4, "titlename"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 15
    const-string/jumbo v4, "splash-screen-theme-name"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16
    const-string/jumbo v4, "text"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "textid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 18
    const-string/jumbo v4, "textname"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_6

    .line 19
    const-string v4, "dmessage"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v4

    int-to-long v4, v4

    .line 21
    const-string v6, "dmessageid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 22
    const-string v4, "dmessagename"

    .line 23
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 25
    :cond_6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "disabled-reason"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 26
    const-string/jumbo v4, "timestamp"

    .line 27
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v5

    .line 28
    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 29
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "locus-id"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 31
    :cond_7
    const-string v4, "flags"

    if-eqz p3, :cond_8

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 32
    iget-object v5, v5, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_8

    .line 34
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    const v6, -0x8a0e

    and-int/2addr v5, v6

    int-to-long v5, v5

    .line 35
    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 36
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_9

    .line 37
    const-string p0, "Package version code should be available at this point."

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 38
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    int-to-long v5, p0

    const-string/jumbo p0, "rank"

    invoke-static {p1, p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 39
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p0

    int-to-long v5, p0

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 40
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result p0

    int-to-long v4, p0

    const-string p0, "icon-res"

    invoke-static {p1, p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 41
    const-string p0, "icon-resname"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 42
    const-string p0, "bitmap-path"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 43
    const-string p0, "icon-uri"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    if-eqz p4, :cond_10

    .line 44
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 45
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_a

    .line 46
    const-string p4, "categories"

    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 49
    invoke-static {p0, p4, v0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 50
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    if-nez p3, :cond_b

    .line 51
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    move p3, v1

    .line 53
    :goto_4
    array-length p4, p0

    if-ge p3, p4, :cond_b

    .line 54
    aget-object p4, p0, p3

    .line 55
    const-string/jumbo v0, "person"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    invoke-virtual {p4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 57
    const-string/jumbo v4, "uri"

    invoke-virtual {p4}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 58
    const-string v4, "key"

    invoke-virtual {p4}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 59
    const-string v4, "is-bot"

    invoke-virtual {p4}, Landroid/app/Person;->isBot()Z

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 60
    const-string v4, "is-important"

    invoke-virtual {p4}, Landroid/app/Person;->isImportant()Z

    move-result p4

    invoke-static {p1, v4, p4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 61
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 62
    :cond_b
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object p0

    .line 63
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object p3

    .line 64
    const-string p4, "extras"

    if-eqz p0, :cond_e

    if-eqz p3, :cond_e

    .line 65
    array-length v0, p0

    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_e

    .line 66
    const-string v5, "intent"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    aget-object v6, p0, v4

    if-nez v6, :cond_c

    goto :goto_6

    .line 68
    :cond_c
    invoke-virtual {v6, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "intent-base"

    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 69
    :goto_6
    aget-object v6, p3, v4

    if-nez v6, :cond_d

    goto :goto_7

    .line 70
    :cond_d
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    invoke-virtual {v6, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 72
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    :goto_7
    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 74
    :cond_e
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_8

    .line 75
    :cond_f
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 77
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    :goto_8
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 79
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    .line 80
    const-string p2, "capability"

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 81
    :cond_10
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final varargs saveShortcut([Landroid/content/pm/ShortcutInfo;)V
    .locals 4

    .line 82
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 86
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 87
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    monitor-exit v3

    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    throw p0

    .line 42
    :cond_1
    new-array v3, v4, [Z

    .line 43
    .line 44
    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-direct {v6, v7, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;-><init>(I[Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 51
    .line 52
    .line 53
    aget-boolean v3, v3, v5

    .line 54
    .line 55
    xor-int/2addr v4, v3

    .line 56
    :goto_0
    if-eqz v4, :cond_2

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :cond_2
    const-string/jumbo v3, "package"

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v3, "name"

    .line 76
    .line 77
    .line 78
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1, v3, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "call-count"

    .line 84
    .line 85
    iget v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 86
    .line 87
    int-to-long v6, v6

    .line 88
    invoke-static {p1, v3, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 89
    .line 90
    .line 91
    const-string v3, "last-reset"

    .line 92
    .line 93
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 94
    .line 95
    invoke-static {p1, v3, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    const-string/jumbo v3, "schema-version"

    .line 101
    .line 102
    .line 103
    iget-boolean v6, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 104
    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    const-wide/16 v6, 0x3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const-wide/16 v6, 0x0

    .line 111
    .line 112
    :goto_1
    invoke-static {p1, v3, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 116
    .line 117
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 118
    .line 119
    iget-object v6, v6, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 120
    .line 121
    invoke-virtual {v3, v6, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 122
    .line 123
    .line 124
    move v3, v5

    .line 125
    :goto_2
    if-ge v3, v1, :cond_5

    .line 126
    .line 127
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 134
    .line 135
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 136
    .line 137
    iget-boolean v7, v7, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 138
    .line 139
    invoke-virtual {p0, p1, v6, p2, v7}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    if-nez p2, :cond_6

    .line 146
    .line 147
    :goto_3
    if-ge v5, v2, :cond_6

    .line 148
    .line 149
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lcom/android/server/pm/ShareTargetInfo;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v5, v5, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    const-string/jumbo p0, "package"

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 171
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    throw p0
.end method

.method public final scheduleSaveToAppSearchLocked()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/util/Collection;

    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-boolean v1, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "Saving shortcuts async for user="

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 82
    .line 83
    iget v2, v2, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " pkg="

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " ids="

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;

    .line 108
    .line 109
    const/4 v4, 0x2

    .line 110
    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v3, ","

    .line 118
    .line 119
    const-string v4, "["

    .line 120
    .line 121
    const-string v5, "]"

    .line 122
    .line 123
    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    const-string v3, "ShortcutService"

    .line 134
    .line 135
    invoke-static {v1, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_0
    return-void
.end method

.method public final sortShortcutsToActivities()Landroid/util/ArrayMap;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final tryApiCall(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 10
    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    add-int/2addr p1, v0

    .line 19
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public final verifyRanksSequential(Ljava/util/List;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, p1

    .line 3
    check-cast v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq v2, v0, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "Package "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ": shortcut "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " rank="

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " but expected to be "

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "ShortcutService.verify"

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public final verifyStates()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Z

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sub-int/2addr v4, v0

    .line 17
    :goto_0
    const/4 v5, 0x0

    .line 18
    if-ltz v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 31
    .line 32
    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 33
    .line 34
    iget v8, v8, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 35
    .line 36
    if-le v7, v8, :cond_0

    .line 37
    .line 38
    aput-boolean v0, v1, v5

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v7, "Package "

    .line 43
    .line 44
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v7, ": activity "

    .line 53
    .line 54
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v7, " has "

    .line 65
    .line 66
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v7, " shortcuts."

    .line 83
    .line 84
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string v7, "ShortcutService.verify"

    .line 92
    .line 93
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_0
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    .line 97
    .line 98
    const/4 v7, 0x1

    .line 99
    invoke-direct {v5, v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .line 109
    .line 110
    new-instance v7, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 111
    .line 112
    const/4 v8, 0x4

    .line 113
    invoke-direct {v7, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 117
    .line 118
    .line 119
    new-instance v7, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 125
    .line 126
    const/4 v8, 0x5

    .line 127
    invoke-direct {v6, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v4, v4, -0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    .line 143
    .line 144
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutPackage;[ZLcom/android/server/pm/ShortcutService;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 148
    .line 149
    .line 150
    aget-boolean p0, v1, v5

    .line 151
    .line 152
    if-nez p0, :cond_2

    .line 153
    .line 154
    return-void

    .line 155
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v0, "See logcat for errors"

    .line 158
    .line 159
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0
.end method
