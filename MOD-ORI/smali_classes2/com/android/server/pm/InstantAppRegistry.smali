.class public final Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

.field public final mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/pm/InstantAppRegistry$1;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mSnapshot:Lcom/android/server/pm/InstantAppRegistry$2;

.field public final mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/UserManagerService$LocalService;Lcom/android/server/pm/DeletePackageHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 4
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    .line 5
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 7
    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 8
    iput-object p4, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 9
    new-instance p1, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 10
    new-instance p1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 11
    new-instance p2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 12
    new-instance p3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 14
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 15
    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    const/4 p1, 0x0

    .line 16
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 17
    new-instance p1, Lcom/android/server/pm/InstantAppRegistry$2;

    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p0, p0, p2}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/pm/InstantAppRegistry$2;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 23
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    .line 24
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 26
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 27
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 29
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 30
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 31
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 32
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/pm/InstantAppRegistry$2;

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v2, "instant"

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static parseMetadata(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .locals 9

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    const-string/jumbo v1, "package"

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v0, "label"

    .line 26
    .line 27
    invoke-interface {p0, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    :cond_1
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    const-string/jumbo v5, "permissions"

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    :cond_2
    :goto_0
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    const-string/jumbo v6, "permission"

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    const-string/jumbo v6, "name"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    const-string v7, "granted"

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-interface {p0, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    new-array p0, p0, [Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    new-array v1, v1, [Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    new-instance v2, Landroid/content/pm/InstantAppInfo;

    .line 129
    .line 130
    invoke-direct {v2, p1, v0, p0, v1}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-object v2
.end method

.method public static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .locals 7

    .line 1
    const-string v0, "Failed parsing instant metadata file: "

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-instance v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 37
    .line 38
    invoke-static {v5, v2}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v6, v2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 46
    .line 47
    .line 48
    return-object v6

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v3, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :catch_1
    const-string p0, "InstantAppRegistry"

    .line 75
    .line 76
    const-string v0, "No instant metadata file"

    .line 77
    .line 78
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-object v2
.end method

.method public static peekInstantCookieFile(ILjava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    array-length p1, p0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p1, :cond_3

    .line 23
    .line 24
    aget-object v2, p0, v1

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "cookie_"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, ".dat"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final addInstantApp(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object p1, v1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    move-object/from16 v4, p1

    .line 7
    .line 8
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v5, v1, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 16
    .line 17
    iget-object v6, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/util/List;

    .line 24
    .line 25
    if-nez v6, :cond_1

    .line 26
    .line 27
    new-instance v6, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v2, v6}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    invoke-direct {v5, v0, v7, v8}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const-string/jumbo v5, "permission"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v6, "permissions"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v7, "package"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v2, v8}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "InstantAppRegistry"

    .line 69
    .line 70
    if-nez v9, :cond_2

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-nez v9, :cond_2

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_2
    new-instance v9, Ljava/io/File;

    .line 81
    .line 82
    const-string/jumbo v11, "metadata.xml"

    .line 83
    .line 84
    .line 85
    invoke-direct {v9, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v8, Landroid/util/AtomicFile;

    .line 89
    .line 90
    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 91
    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    invoke-static {v11}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 103
    .line 104
    const/4 v14, 0x1

    .line 105
    invoke-interface {v12, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-interface {v12, v9, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v12, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    .line 115
    .line 116
    const-string v13, "label"

    .line 117
    .line 118
    iget-object v15, v1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    invoke-virtual {v0, v15}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-interface {v12, v9, v13, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    invoke-interface {v12, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    array-length v15, v13

    .line 143
    :goto_0
    if-ge v3, v15, :cond_4

    .line 144
    .line 145
    aget-object v14, v13, v3

    .line 146
    .line 147
    invoke-interface {v12, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    .line 149
    .line 150
    const-string/jumbo v4, "name"

    .line 151
    .line 152
    .line 153
    invoke-interface {v12, v9, v4, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_3

    .line 165
    .line 166
    const-string v4, "granted"

    .line 167
    .line 168
    const/4 v14, 0x1

    .line 169
    invoke-interface {v12, v9, v4, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    move-object v9, v11

    .line 175
    goto :goto_2

    .line 176
    :cond_3
    const/4 v14, 0x1

    .line 177
    :goto_1
    invoke-interface {v12, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    .line 179
    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 181
    .line 182
    move-object/from16 v4, p1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_4
    invoke-interface {v12, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    .line 187
    .line 188
    invoke-interface {v12, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    .line 190
    .line 191
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    .line 197
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    :goto_2
    :try_start_2
    const-string v3, "Failed to write instant state, restoring backup"

    .line 203
    .line 204
    invoke-static {v10, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 208
    .line 209
    .line 210
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    .line 212
    .line 213
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_5

    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_5
    move-object v3, v0

    .line 234
    check-cast v3, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 235
    .line 236
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iget-object v1, v1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 251
    .line 252
    if-eqz v3, :cond_6

    .line 253
    .line 254
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 255
    .line 256
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    goto :goto_4

    .line 261
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 270
    .line 271
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    new-instance v4, Landroid/graphics/Canvas;

    .line 276
    .line 277
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    const/4 v7, 0x0

    .line 289
    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    .line 294
    .line 295
    move-object v1, v3

    .line 296
    :goto_4
    new-instance v3, Ljava/io/File;

    .line 297
    .line 298
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v2, v0}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v2, "icon.png"

    .line 307
    .line 308
    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    .line 312
    .line 313
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 314
    .line 315
    .line 316
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 317
    .line 318
    const/16 v3, 0x64

    .line 319
    .line 320
    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 321
    .line 322
    .line 323
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :catch_0
    move-exception v0

    .line 328
    goto :goto_6

    .line 329
    :catchall_2
    move-exception v0

    .line 330
    move-object v1, v0

    .line 331
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :catchall_3
    move-exception v0

    .line 336
    move-object v2, v0

    .line 337
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    :goto_5
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 341
    :goto_6
    const-string v1, "Error writing instant app icon"

    .line 342
    .line 343
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .line 345
    .line 346
    :goto_7
    return-void

    .line 347
    :catchall_4
    move-exception v0

    .line 348
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 349
    .line 350
    .line 351
    throw v0
.end method

.method public final createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 44
    .line 45
    invoke-interface {v2, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGrantedPermissions(ILjava/lang/String;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    new-array v2, v2, [Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    move v7, p2

    .line 69
    move-object v8, p1

    .line 70
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p3, :cond_1

    .line 75
    .line 76
    new-instance p0, Landroid/content/pm/InstantAppInfo;

    .line 77
    .line 78
    invoke-direct {p0, p1, v1, v2}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_1
    new-instance p2, Landroid/content/pm/InstantAppInfo;

    .line 83
    .line 84
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-direct {p2, p3, p0, v1, v2}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method

.method public final deleteInstantApplicationMetadata(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {v1, v2, p2}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(ILjava/util/function/Predicate;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string/jumbo v2, "metadata.xml"

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    const-string v2, "icon.png"

    .line 31
    .line 32
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/io/File;

    .line 39
    .line 40
    const-string v2, "android_id"

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(ILjava/lang/String;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isInstantAccessGranted(III)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/utils/WatchedSparseArray;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return p1

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    monitor-exit v0

    .line 40
    return p0

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onPackageUninstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, p3

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_5

    .line 7
    .line 8
    aget v3, p3, v2

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 28
    .line 29
    .line 30
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 31
    .line 32
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 48
    .line 49
    invoke-virtual {v4, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/internal/os/SomeArgs;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget v4, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 64
    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object v5, v5, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/android/server/utils/WatchedSparseArray;

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    monitor-exit v0

    .line 89
    return-void

    .line 90
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/io/File;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "instant"

    .line 26
    .line 27
    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 10

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/List;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    move v5, v3

    .line 28
    :goto_0
    if-ge v5, v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 35
    .line 36
    iget-object v7, v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    iget-object v0, v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    new-instance v1, Ljava/io/File;

    .line 60
    .line 61
    invoke-static {p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string/jumbo v2, "metadata.xml"

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, v0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 80
    .line 81
    :goto_1
    if-nez v0, :cond_3

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    array-length v4, v0

    .line 104
    move v5, v3

    .line 105
    :goto_2
    if-ge v5, v4, :cond_7

    .line 106
    .line 107
    aget-object v6, v0, v5

    .line 108
    .line 109
    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    const-class v8, Landroid/permission/PermissionManager;

    .line 112
    .line 113
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Landroid/permission/PermissionManager;

    .line 118
    .line 119
    invoke-virtual {v7, v6, v3}, Landroid/permission/PermissionManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    if-eqz v7, :cond_6

    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    const/4 v9, 0x1

    .line 130
    if-eq v8, v9, :cond_5

    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    and-int/lit8 v8, v8, 0x20

    .line 137
    .line 138
    if-eqz v8, :cond_6

    .line 139
    .line 140
    :cond_5
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    and-int/lit16 v7, v7, 0x1000

    .line 145
    .line 146
    if-eqz v7, :cond_6

    .line 147
    .line 148
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_6

    .line 157
    .line 158
    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    const-class v8, Landroid/permission/PermissionManager;

    .line 161
    .line 162
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Landroid/permission/PermissionManager;

    .line 167
    .line 168
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v7, v8, v6, v9}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    throw p0
.end method

.method public final pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p6

    .line 4
    .line 5
    iget-object v3, v0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v4, Landroid/os/storage/StorageManager;

    .line 8
    .line 9
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/os/storage/StorageManager;

    .line 14
    .line 15
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    cmp-long v4, v4, p2

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-ltz v4, :cond_0

    .line 29
    .line 30
    return v5

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    iget-object v4, v0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    :goto_0
    if-ge v12, v9, :cond_9

    .line 52
    .line 53
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 58
    .line 59
    if-nez v14, :cond_1

    .line 60
    .line 61
    const/4 v15, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    :goto_1
    if-nez v15, :cond_2

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_2
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    .line 75
    .line 76
    .line 77
    move-result-wide v16

    .line 78
    sub-long v16, v6, v16

    .line 79
    .line 80
    cmp-long v16, v16, p4

    .line 81
    .line 82
    if-gez v16, :cond_3

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_3
    array-length v10, v4

    .line 86
    const/4 v11, 0x0

    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    :goto_2
    if-ge v11, v10, :cond_6

    .line 90
    .line 91
    aget v5, v4, v11

    .line 92
    .line 93
    invoke-interface {v14, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 98
    .line 99
    .line 100
    move-result v18

    .line 101
    if-eqz v18, :cond_5

    .line 102
    .line 103
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_4

    .line 108
    .line 109
    const/16 v17, 0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const/16 v17, 0x0

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    :goto_4
    if-eqz v17, :cond_8

    .line 120
    .line 121
    if-nez v13, :cond_7

    .line 122
    .line 123
    new-instance v13, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    const/4 v5, 0x1

    .line 138
    goto :goto_0

    .line 139
    :cond_9
    if-eqz v13, :cond_a

    .line 140
    .line 141
    new-instance v4, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    invoke-direct {v4, v8}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v13, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 147
    .line 148
    .line 149
    :cond_a
    if-eqz v13, :cond_c

    .line 150
    .line 151
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    const/4 v5, 0x0

    .line 156
    :goto_6
    if-ge v5, v4, :cond_c

    .line 157
    .line 158
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    move-object/from16 v23, v6

    .line 163
    .line 164
    check-cast v23, Ljava/lang/String;

    .line 165
    .line 166
    iget-object v6, v0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 167
    .line 168
    const-wide/16 v21, -0x1

    .line 169
    .line 170
    const/16 v19, 0x0

    .line 171
    .line 172
    const/16 v20, 0x2

    .line 173
    .line 174
    const/16 v24, 0x1

    .line 175
    .line 176
    move-object/from16 v18, v6

    .line 177
    .line 178
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    const/4 v7, 0x1

    .line 183
    if-ne v6, v7, :cond_b

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    .line 186
    .line 187
    .line 188
    move-result-wide v8

    .line 189
    cmp-long v6, v8, p2

    .line 190
    .line 191
    if-ltz v6, :cond_b

    .line 192
    .line 193
    return v7

    .line 194
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_c
    iget-object v4, v0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 198
    .line 199
    monitor-enter v4

    .line 200
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    array-length v6, v5

    .line 207
    const/4 v7, 0x0

    .line 208
    :goto_7
    if-ge v7, v6, :cond_13

    .line 209
    .line 210
    aget v8, v5, v7

    .line 211
    .line 212
    new-instance v9, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;

    .line 213
    .line 214
    invoke-direct {v9, v1, v2}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;-><init>(J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(ILjava/util/function/Predicate;)V

    .line 218
    .line 219
    .line 220
    new-instance v9, Ljava/io/File;

    .line 221
    .line 222
    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    const-string v10, "instant"

    .line 227
    .line 228
    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-nez v8, :cond_e

    .line 236
    .line 237
    :cond_d
    :goto_8
    const/4 v11, 0x1

    .line 238
    goto :goto_c

    .line 239
    :cond_e
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    if-nez v8, :cond_f

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_f
    array-length v9, v8

    .line 247
    const/4 v10, 0x0

    .line 248
    :goto_9
    if-ge v10, v9, :cond_d

    .line 249
    .line 250
    aget-object v11, v8, v10

    .line 251
    .line 252
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-nez v12, :cond_11

    .line 257
    .line 258
    :cond_10
    :goto_a
    const/4 v11, 0x1

    .line 259
    goto :goto_b

    .line 260
    :cond_11
    new-instance v12, Ljava/io/File;

    .line 261
    .line 262
    const-string/jumbo v13, "metadata.xml"

    .line 263
    .line 264
    .line 265
    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    if-nez v13, :cond_12

    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v13

    .line 279
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    .line 280
    .line 281
    .line 282
    move-result-wide v18

    .line 283
    sub-long v13, v13, v18

    .line 284
    .line 285
    cmp-long v12, v13, v1

    .line 286
    .line 287
    if-lez v12, :cond_10

    .line 288
    .line 289
    invoke-static {v11}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    .line 293
    .line 294
    .line 295
    move-result-wide v11

    .line 296
    cmp-long v11, v11, p2

    .line 297
    .line 298
    if-ltz v11, :cond_10

    .line 299
    .line 300
    monitor-exit v4

    .line 301
    const/4 v11, 0x1

    .line 302
    return v11

    .line 303
    :catchall_0
    move-exception v0

    .line 304
    goto :goto_d

    .line 305
    :goto_b
    add-int/lit8 v10, v10, 0x1

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_13
    monitor-exit v4

    .line 312
    const/4 v0, 0x0

    .line 313
    return v0

    .line 314
    :goto_d
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    throw v0
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeInstantAppLPw(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :try_start_1
    iget-object v0, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    :try_start_2
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    :goto_0
    if-ltz v0, :cond_4

    .line 56
    .line 57
    iget-object v1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 64
    .line 65
    iget-object v2, v1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 66
    .line 67
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final removeUninstalledInstantAppStateLPw(ILjava/util/function/Predicate;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v2, :cond_4

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 30
    .line 31
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/pm/InstantAppRegistry$2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/InstantAppRegistry;

    .line 8
    .line 9
    return-object p0
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
