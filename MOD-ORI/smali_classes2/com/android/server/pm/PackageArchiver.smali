.class public final Lcom/android/server/pm/PackageArchiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FILE_PATH:Ljava/lang/String;

.field public static final OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

.field public final mArchiveVersionMap:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mLauncherIntentSenders:Ljava/util/Map;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    const v1, 0x3ecccccd    # 0.4f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "/system/"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string/jumbo v1, "package-version.dat"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/pm/PackageArchiver;->FILE_PATH:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    new-instance p2, Lcom/android/server/pm/AppStateHelper;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/android/server/pm/AppStateHelper;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/io/File;

    .line 34
    .line 35
    sget-object p2, Lcom/android/server/pm/PackageArchiver;->FILE_PATH:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    new-instance p2, Ljava/io/FileInputStream;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_2
    new-instance p1, Ljava/io/ObjectInputStream;

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    .line 58
    .line 59
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    .line 61
    .line 62
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :catchall_2
    move-exception v1

    .line 71
    :try_start_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_3
    move-exception p1

    .line 76
    :try_start_7
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 80
    :goto_1
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_4
    move-exception p2

    .line 85
    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 89
    :catch_0
    :try_start_a
    const-string p1, "PackageArchiverService"

    .line 90
    .line 91
    const-string/jumbo p2, "versionMap read error!"

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_3
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_0

    .line 102
    .line 103
    const-string p1, "PackageArchiverService"

    .line 104
    .line 105
    const-string/jumbo p2, "read readAppVersion"

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 112
    .line 113
    new-instance p1, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;

    .line 114
    .line 115
    const/4 p2, 0x0

    .line 116
    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 120
    .line 121
    .line 122
    :cond_0
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 125
    throw p0
.end method

.method public static createArchivedActivities(ILjava/util/List;)[Landroid/content/pm/ArchivedActivityParcel;
    .locals 8

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    if-nez v4, :cond_0

    goto :goto_2

    .line 25
    :cond_0
    new-instance v5, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v5}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    .line 26
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    .line 27
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v4, v7

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v4, v2}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    .line 30
    iput-object v7, v5, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    .line 31
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ArchivedActivityParcel;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ArchivedActivityParcel;

    return-object p0

    .line 34
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to extract title and icon of main activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No launcher activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createArchivedActivities(Lcom/android/server/pm/pkg/ArchiveState;)[Landroid/content/pm/ArchivedActivityParcel;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    if-eqz p0, :cond_5

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    if-nez v3, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    new-instance v4, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v4}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    .line 7
    iget-object v5, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    .line 8
    iget-object v5, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 9
    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    .line 10
    iget-object v5, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 12
    :goto_1
    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    .line 13
    iget-object v3, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    if-nez v3, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 15
    :goto_2
    iput-object v6, v4, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ArchivedActivityParcel;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ArchivedActivityParcel;

    return-object p0

    .line 19
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to extract title and icon of main activities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No activities in archive state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 9
    .line 10
    const-string p1, "Package %s not found."

    .line 11
    .line 12
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method

.method public static getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p0, p2, p3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getResponsibleInstallerTitles(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/InstallSource;I[I)Landroid/util/SparseArray;
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-eq p3, v1, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1, p2, v3, v4, p3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const/4 p3, 0x0

    .line 32
    :goto_0
    array-length v1, p4

    .line 33
    if-ge p3, v1, :cond_3

    .line 34
    .line 35
    aget v1, p4, p3

    .line 36
    .line 37
    invoke-interface {p1, p2, v3, v4, v1}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p0, v5, p2, v1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_2
    return-object v0

    .line 55
    :catch_0
    return-object v2
.end method

.method public static isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

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

.method public static storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lcom/android/server/pm/PackageArchiver$FixedSizeBitmapDrawable;

    .line 16
    .line 17
    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    move-object v3, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v3, p1

    .line 23
    :goto_0
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    mul-float/2addr v0, p1

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    add-float/2addr v0, v1

    .line 33
    div-float v7, p1, v0

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 36
    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 38
    .line 39
    const/high16 v1, -0x1000000

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    .line 45
    .line 46
    move-object v2, v1

    .line 47
    move v4, v7

    .line 48
    move v5, v7

    .line 49
    move v6, v7

    .line 50
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageArchiver;->storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string/jumbo v2, "package_archiver"

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string p2, "PackageArchiverService"

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Created icons directory at "

    .line 45
    .line 46
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 65
    .line 66
    const-string p1, "Unable to create directory "

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 77
    .line 78
    .line 79
    new-instance p0, Ljava/io/File;

    .line 80
    .line 81
    const-string v1, ".png"

    .line 82
    .line 83
    invoke-static {p3, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-direct {p0, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p4}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance p3, Ljava/io/FileOutputStream;

    .line 95
    .line 96
    invoke-direct {p3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    .line 98
    .line 99
    :try_start_0
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 100
    .line 101
    const/16 v0, 0x64

    .line 102
    .line 103
    invoke-virtual {p1, p4, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p3, "Stored icon at "

    .line 124
    .line 125
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    goto :goto_1

    .line 149
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 150
    .line 151
    const-string p2, "Failure to store icon file %s"

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_1
    move-exception p1

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :goto_2
    throw p0
.end method


# virtual methods
.method public final attachListenerToSession(Landroid/content/IntentSender;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 20
    .line 21
    iget-object v4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const/4 v2, 0x0

    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    move v9, p3

    .line 33
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver;->notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const/4 p0, -0x1

    .line 38
    if-ne v0, p0, :cond_1

    .line 39
    .line 40
    iget-object p0, p2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    .line 44
    .line 45
    check-cast p2, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p1, "Session %s has unarchive status%s but is still active."

    .line 58
    .line 59
    iget p2, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V
    .locals 3

    .line 1
    const-string v0, "Clearing archive states for "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    const-string v1, "PackageArchiverService"

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 54
    .line 55
    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object p0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v0, Ljava/io/File;

    .line 60
    .line 61
    new-instance v1, Ljava/io/File;

    .line 62
    .line 63
    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string/jumbo v2, "package_archiver"

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_1

    .line 81
    .line 82
    const-string p0, "PackageArchiverService"

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p2, "Icons are already deleted at "

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_2

    .line 111
    .line 112
    const-string p0, "PackageArchiverService"

    .line 113
    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "Failed to clean up archive files for "

    .line 117
    .line 118
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    const-string p0, "PackageArchiverService"

    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string p2, "Deleted icons at "

    .line 132
    .line 133
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 154
    return-void

    .line 155
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 157
    .line 158
    throw p1
.end method

.method public final createAndStoreArchiveState(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2, p1, v1, p2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, Lcom/android/server/pm/SettingBase;

    .line 17
    .line 18
    iget v3, v3, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 19
    .line 20
    and-int/lit8 v4, v3, 0x1

    .line 21
    .line 22
    if-nez v4, :cond_3

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0x80

    .line 25
    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    move-object v3, v2

    .line 39
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 40
    .line 41
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {p0, v1, v8, p1}, Lcom/android/server/pm/PackageArchiver;->verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget v1, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 52
    .line 53
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-instance v4, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v4, p0, v1, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/pm/PackageArchiver;->isProtectivePackage(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    .line 84
    iget-object v1, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(ILjava/lang/String;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;

    .line 96
    .line 97
    move-object v5, v2

    .line 98
    move-object v6, p0

    .line 99
    move v9, p1

    .line 100
    move-object v10, p2

    .line 101
    move-object v12, v1

    .line 102
    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 112
    .line 113
    const-string p1, "Protected package %s cannot be archived."

    .line 114
    .line 115
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_1
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 128
    .line 129
    const-string p1, "The app %s is opted out of archiving."

    .line 130
    .line 131
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 144
    .line 145
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 146
    .line 147
    iget-object p1, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 148
    .line 149
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string p2, "%s is not installed."

    .line 154
    .line 155
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_3
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 164
    .line 165
    const-string p1, "System apps cannot be archived."

    .line 166
    .line 167
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0
.end method

.method public final createArchiveStateInternal(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/android/server/pm/pkg/ArchiveState;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/app/ActivityManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    const/4 v1, 0x0

    .line 29
    move v9, v1

    .line 30
    :goto_0
    if-ge v9, v8, :cond_0

    .line 31
    .line 32
    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v10, v1

    .line 37
    check-cast v10, Landroid/content/pm/LauncherActivityInfo;

    .line 38
    .line 39
    mul-int/lit8 v5, v9, 0x2

    .line 40
    .line 41
    move-object v1, p0

    .line 42
    move-object v2, p1

    .line 43
    move-object v3, v10

    .line 44
    move v4, p3

    .line 45
    move v6, v0

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageArchiver;->storeIcon(Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;III)Ljava/nio/file/Path;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 51
    .line 52
    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v10}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Lcom/android/server/pm/pkg/ArchiveState;

    .line 75
    .line 76
    invoke-direct {p0, p2, v7}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    return-object p0
.end method

.method public decodeIcon(Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Archived icon cannot be decoded "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "PackageArchiverService"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    return-object v0
.end method

.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/app/AppOpsManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AppOpsManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const-string v0, "PackageArchiverService"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_0
    invoke-static {v2, p2, v1, p1}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move p2, v4

    .line 45
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge p2, v1, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move-object p1, v3

    .line 80
    :goto_1
    if-eqz p1, :cond_6

    .line 81
    .line 82
    iget-object p2, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_3

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageArchiver;->decodeIcon(Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;)Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const/16 v1, 0x91

    .line 111
    .line 112
    invoke-virtual {p2, v1, v2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-nez p2, :cond_5

    .line 117
    .line 118
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    const v1, 0x1080121

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-nez p2, :cond_4

    .line 138
    .line 139
    const-string p0, "Unable to locate cloud overlay for archived app!"

    .line 140
    .line 141
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {p3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {p3, v4, v4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/16 v1, 0x210

    .line 174
    .line 175
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 180
    .line 181
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 185
    .line 186
    const/4 v1, 0x2

    .line 187
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    aput-object p3, v1, v4

    .line 190
    .line 191
    const/4 p3, 0x1

    .line 192
    aput-object p2, v1, p3

    .line 193
    .line 194
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    const-class p2, Landroid/app/ActivityManager;

    .line 200
    .line 201
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Landroid/app/ActivityManager;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    invoke-static {v0, p0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    .line 217
    .line 218
    move-object p1, p0

    .line 219
    :cond_5
    :goto_2
    return-object p1

    .line 220
    :cond_6
    :goto_3
    return-object v3

    .line 221
    :catch_0
    move-exception p0

    .line 222
    const-string p2, "Package %s couldn\'t be found."

    .line 223
    .line 224
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .line 234
    .line 235
    return-object v3
.end method

.method public final getLauncherActivityInfos(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 21
    .line 22
    const-string p1, "The app %s does not have a main activity."

    .line 23
    .line 24
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final getOrCreateLauncherListener(ILjava/lang/String;)Landroid/content/IntentSender;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 13
    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/IntentSender;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    monitor-exit p2

    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Landroid/content/IntentSender;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 39
    .line 40
    check-cast p0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    monitor-exit p2

    .line 46
    return-object v0

    .line 47
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final isProtectivePackage(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;I)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    const/4 v5, 0x1

    .line 25
    if-ge v4, v2, :cond_1

    .line 26
    .line 27
    aget v6, v1, v4

    .line 28
    .line 29
    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    new-instance v7, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    invoke-direct {v7, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    return v5

    .line 49
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 56
    .line 57
    const-string v2, "android"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 66
    .line 67
    const-string v2, "android"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    if-eq v1, v2, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_b

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    if-eq v1, v2, :cond_3

    .line 110
    .line 111
    goto/16 :goto_9

    .line 112
    .line 113
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    move v0, v3

    .line 115
    move v1, v0

    .line 116
    :goto_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-ge v0, v2, :cond_6

    .line 125
    .line 126
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 135
    .line 136
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 159
    .line 160
    iget-object v6, v2, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 161
    .line 162
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 163
    .line 164
    monitor-enter v6

    .line 165
    :try_start_1
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 168
    .line 169
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    monitor-exit v6

    .line 174
    if-nez v2, :cond_4

    .line 175
    .line 176
    move v2, v5

    .line 177
    goto :goto_3

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    throw p0

    .line 181
    :cond_4
    move v2, v3

    .line 182
    :goto_3
    add-int/2addr v1, v2

    .line 183
    if-le v1, v5, :cond_5

    .line 184
    .line 185
    const-string p0, "PackageArchiverService"

    .line 186
    .line 187
    const-string p1, "Can not archive package. "

    .line 188
    .line 189
    const-string p3, " is installed on multi user."

    .line 190
    .line 191
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return v5

    .line 195
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    const-string p0, "PackageArchiverService"

    .line 199
    .line 200
    const/4 v0, 0x0

    .line 201
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {v1, p2, p3}, Landroid/content/pm/IPackageManager;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 206
    .line 207
    .line 208
    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    goto :goto_4

    .line 210
    :catch_0
    move-exception p3

    .line 211
    const-string v1, "Failed to get "

    .line 212
    .line 213
    const-string v2, " metadata fd: "

    .line 214
    .line 215
    invoke-static {v1, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-object p3, v0

    .line 234
    :goto_4
    if-eqz p3, :cond_7

    .line 235
    .line 236
    :try_start_3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 237
    .line 238
    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 239
    .line 240
    .line 241
    :try_start_4
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    .line 242
    .line 243
    .line 244
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 245
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :catch_1
    move-exception p3

    .line 250
    goto :goto_6

    .line 251
    :catchall_2
    move-exception p3

    .line 252
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catchall_3
    move-exception v1

    .line 257
    :try_start_7
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :goto_5
    throw p3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 261
    :goto_6
    const-string v1, "Failed to read "

    .line 262
    .line 263
    const-string v2, " metadata: "

    .line 264
    .line 265
    invoke-static {v1, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p3

    .line 273
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :cond_7
    :goto_7
    if-eqz v0, :cond_8

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    .line 287
    .line 288
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 289
    .line 290
    .line 291
    :goto_8
    const-string p0, "com.samsung.android.archiving.disallow_archive"

    .line 292
    .line 293
    invoke-virtual {v0, p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    if-eqz p0, :cond_9

    .line 298
    .line 299
    const-string p0, "PackageArchiverService"

    .line 300
    .line 301
    const-string p1, "Can not archive package. "

    .line 302
    .line 303
    const-string p3, " is not allowed by meta data."

    .line 304
    .line 305
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return v5

    .line 309
    :cond_9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_a

    .line 318
    .line 319
    const-string p0, "PackageArchiverService"

    .line 320
    .line 321
    const-string p1, "Can not archive package. "

    .line 322
    .line 323
    const-string p3, " is installed on external storage"

    .line 324
    .line 325
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return v5

    .line 329
    :cond_a
    return v3

    .line 330
    :cond_b
    :goto_9
    :try_start_8
    const-string p0, "PackageArchiverService"

    .line 331
    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string p3, "Can not archive package. "

    .line 338
    .line 339
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string p2, " is not allowed by SDK version."

    .line 346
    .line 347
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    monitor-exit v0

    .line 358
    return v5

    .line 359
    :goto_a
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 360
    throw p0
.end method

.method public final notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v5, p6

    .line 10
    .line 11
    move/from16 v6, p8

    .line 12
    .line 13
    new-instance v15, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "android.content.pm.extra.PACKAGE_NAME"

    .line 19
    .line 20
    invoke-virtual {v15, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v7, "android.content.pm.extra.UNARCHIVE_STATUS"

    .line 24
    .line 25
    invoke-virtual {v15, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    new-instance v7, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v8, "com.android.intent.action.UNARCHIVE_ERROR_DIALOG"

    .line 33
    .line 34
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v8, "android.content.pm.extra.UNARCHIVE_STATUS"

    .line 38
    .line 39
    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string v0, "android.intent.extra.USER"

    .line 43
    .line 44
    invoke-static/range {p8 .. p8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-wide/16 v8, 0x0

    .line 52
    .line 53
    cmp-long v0, v3, v8

    .line 54
    .line 55
    if-lez v0, :cond_0

    .line 56
    .line 57
    const-string v0, "com.android.content.pm.extra.UNARCHIVE_EXTRA_REQUIRED_BYTES"

    .line 58
    .line 59
    invoke-virtual {v7, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :cond_0
    if-eqz v5, :cond_1

    .line 63
    .line 64
    const-string v0, "android.intent.extra.INTENT"

    .line 65
    .line 66
    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    :cond_1
    const-string v0, "com.android.content.pm.extra.UNARCHIVE_INSTALLER_PACKAGE_NAME"

    .line 70
    .line 71
    move-object/from16 v3, p2

    .line 72
    .line 73
    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string v3, "PackageArchiverService"

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v5, 0x3e8

    .line 86
    .line 87
    invoke-static {v5, v6, v0, v2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-interface {v0, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    const-string/jumbo v0, "notifyUnarchivalListener: App not archived %s."

    .line 102
    .line 103
    .line 104
    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :goto_0
    move-object v0, v4

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, v0, Lcom/android/server/pm/pkg/ArchiveState;->mInstallerTitle:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string/jumbo v5, "notifyUnarchivalListener: Couldn\'t fetch package state for %s."

    .line 122
    .line 123
    .line 124
    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {v5, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :goto_1
    if-nez v0, :cond_3

    .line 137
    .line 138
    move-object v7, v4

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    const-string v3, "com.android.content.pm.extra.UNARCHIVE_INSTALLER_TITLE"

    .line 141
    .line 142
    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    :goto_2
    if-nez v7, :cond_4

    .line 146
    .line 147
    return-void

    .line 148
    :cond_4
    const-string v0, "android.intent.extra.INTENT"

    .line 149
    .line 150
    invoke-virtual {v15, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    const-string v0, "android.intent.extra.USER"

    .line 154
    .line 155
    invoke-static/range {p8 .. p8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const/4 v0, 0x2

    .line 167
    invoke-virtual {v3, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 168
    .line 169
    .line 170
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object v7, v0

    .line 185
    check-cast v7, Landroid/content/IntentSender;

    .line 186
    .line 187
    :try_start_1
    iget-object v8, v1, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    const/4 v13, 0x0

    .line 197
    move-object v10, v15

    .line 198
    invoke-virtual/range {v7 .. v14}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    .line 200
    .line 201
    iget-object v5, v1, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 202
    .line 203
    monitor-enter v5

    .line 204
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 205
    .line 206
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    check-cast v0, Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    monitor-exit v5

    .line 220
    goto :goto_3

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    throw v0

    .line 224
    :catchall_1
    move-exception v0

    .line 225
    goto :goto_4

    .line 226
    :catch_1
    move-exception v0

    .line 227
    :try_start_3
    const-string v5, "PackageArchiverService"

    .line 228
    .line 229
    const-string v7, "Failed to send unarchive intent"

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    new-array v8, v8, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    .line 240
    .line 241
    iget-object v5, v1, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 242
    .line 243
    monitor-enter v5

    .line 244
    :try_start_4
    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 245
    .line 246
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v0, Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    monitor-exit v5

    .line 260
    goto :goto_3

    .line 261
    :catchall_2
    move-exception v0

    .line 262
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 263
    throw v0

    .line 264
    :goto_4
    iget-object v3, v1, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 265
    .line 266
    monitor-enter v3

    .line 267
    :try_start_5
    iget-object v1, v1, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    .line 268
    .line 269
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v1, Ljava/util/HashMap;

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 283
    throw v0

    .line 284
    :catchall_3
    move-exception v0

    .line 285
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 286
    throw v0

    .line 287
    :cond_6
    return-void
.end method

.method public final requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 7
    const-string v2, "Requested archival of package %s for user %s."

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "PackageArchiverService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    .line 10
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 13
    invoke-static {v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    move-object/from16 v14, p2

    .line 14
    invoke-interface {v9, v14, v3, v4, v11}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-ne v3, v12, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 18
    const-string v2, "The UID %s of callerPackageName set by the caller doesn\'t match the caller\'s actual UID %s."

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v14, p2

    :goto_0
    const/4 v15, 0x2

    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x1

    const/16 v16, 0x0

    if-eqz v3, :cond_2

    move/from16 v17, v4

    goto :goto_1

    :cond_2
    move/from16 v17, v16

    :goto_1
    if-eqz v17, :cond_3

    .line 19
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 21
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    goto :goto_2

    .line 23
    :cond_3
    new-array v1, v4, [I

    aput v11, v1, v16

    .line 24
    :goto_2
    array-length v8, v1

    move/from16 v7, v16

    :goto_3
    if-ge v7, v8, :cond_4

    aget v6, v1, v7

    .line 25
    const-string v4, "archiveApp"

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v3, v9

    move v5, v12

    move/from16 v20, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    add-int/lit8 v7, v20, 0x1

    move/from16 v8, v18

    goto :goto_3

    .line 26
    :cond_4
    iget-object v3, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.REQUEST_DELETE_PACKAGES"

    .line 27
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 28
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.DELETE_PACKAGES or com.android.permission.REQUEST_DELETE_PACKAGES permission to request an archival."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_6
    :goto_4
    array-length v3, v1

    new-array v3, v3, [Ljava/util/concurrent/CompletableFuture;

    .line 30
    :try_start_0
    array-length v4, v1

    move/from16 v5, v16

    :goto_5
    if-ge v5, v4, :cond_7

    .line 31
    aget v6, v1, v5

    invoke-virtual {v0, v6, v10}, Lcom/android/server/pm/PackageArchiver;->createAndStoreArchiveState(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    aput-object v6, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    if-eqz v17, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v15, v16

    :goto_6
    or-int/lit8 v5, v15, 0x11

    .line 32
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v15

    new-instance v9, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v7, v11

    move v8, v12

    move-object v11, v9

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    invoke-virtual {v15, v11}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda9;

    move-object/from16 v3, p4

    invoke-direct {v2, v0, v10, v3}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 34
    :goto_7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 35
    const-string v3, "Failed to archive %s with message %s"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestArchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v5, p2

    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    const-wide/16 v9, 0x0

    .line 39
    .line 40
    invoke-interface {v2, v5, v9, v10, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ne v4, v3, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "The UID %s of callerPackageName set by the caller doesn\'t match the caller\'s actual UID %s."

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_1
    :goto_0
    const-string/jumbo v10, "unarchiveApp"

    .line 72
    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    const/4 v14, 0x1

    .line 76
    move-object v9, v2

    .line 77
    move v11, v3

    .line 78
    move v12, v7

    .line 79
    invoke-interface/range {v9 .. v14}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 80
    .line 81
    .line 82
    :try_start_0
    invoke-static {v3, v7, v2, v8}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v3, v7, v2, v5}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v4, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    .line 95
    .line 96
    .line 97
    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    if-eqz v3, :cond_9

    .line 99
    .line 100
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 101
    .line 102
    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 103
    .line 104
    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-eqz v9, :cond_8

    .line 109
    .line 110
    iget-object v3, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    const-string v4, "android.permission.INSTALL_PACKAGES"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_2

    .line 119
    .line 120
    const/4 v3, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const/4 v3, 0x0

    .line 123
    :goto_1
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 126
    .line 127
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 132
    .line 133
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v3, :cond_4

    .line 138
    .line 139
    if-eqz v2, :cond_3

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 143
    .line 144
    const-string v1, "You need the com.android.permission.INSTALL_PACKAGES or com.android.permission.REQUEST_INSTALL_PACKAGES permission to request an unarchival."

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_4
    :goto_2
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 151
    .line 152
    if-eqz v3, :cond_7

    .line 153
    .line 154
    if-eqz p5, :cond_5

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    :try_start_1
    new-instance v11, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;

    .line 158
    .line 159
    move-object v1, v11

    .line 160
    move-object v2, p0

    .line 161
    move-object/from16 v3, p1

    .line 162
    .line 163
    move-object v4, v9

    .line 164
    move-object/from16 v5, p2

    .line 165
    .line 166
    move-object/from16 v6, p3

    .line 167
    .line 168
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v11}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    new-instance v7, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;

    .line 182
    .line 183
    move-object v1, v7

    .line 184
    move-object v2, p0

    .line 185
    move-object/from16 v3, p1

    .line 186
    .line 187
    move-object/from16 v4, p4

    .line 188
    .line 189
    move-object v5, v9

    .line 190
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    instance-of v1, v1, Ljava/io/IOException;

    .line 203
    .line 204
    if-eqz v1, :cond_6

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Ljava/io/IOException;

    .line 211
    .line 212
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    throw v0

    .line 217
    :cond_6
    throw v0

    .line 218
    :cond_7
    :goto_3
    new-instance v1, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;

    .line 219
    .line 220
    move-object/from16 v2, p3

    .line 221
    .line 222
    move-object/from16 v3, p4

    .line 223
    .line 224
    invoke-direct {v1, p0, v8, v2, v3}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_8
    new-instance v0, Landroid/os/ParcelableException;

    .line 232
    .line 233
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 234
    .line 235
    const-string v2, "No installer found to unarchive app %s."

    .line 236
    .line 237
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_9
    :try_start_2
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 253
    .line 254
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 255
    .line 256
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 257
    .line 258
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const-string v2, "Package %s is not currently archived."

    .line 263
    .line 264
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    :catch_1
    move-exception v0

    .line 273
    new-instance v1, Landroid/os/ParcelableException;

    .line 274
    .line 275
    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    throw v1
.end method

.method public final sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v2, p1

    .line 20
    move-object v5, p4

    .line 21
    invoke-virtual/range {v2 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string p1, "Failed to send status for %s with message %s"

    .line 27
    .line 28
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "PackageArchiverService"

    .line 37
    .line 38
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final setAppVersion(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 24
    .line 25
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance p2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v0, 0x1388

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    const-string p0, "PackageArchiverService"

    .line 52
    .line 53
    const-string/jumbo p1, "packageName is null or empty!"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final storeArchiveState(Ljava/lang/String;Lcom/android/server/pm/pkg/ArchiveState;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 42
    .line 43
    const-string p2, "Package %s not found."

    .line 44
    .line 45
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 59
    .line 60
    throw p0
.end method

.method public storeIcon(Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;III)Ljava/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    invoke-virtual {p2, p0}, Landroid/content/pm/LauncherActivityInfo;->getUnthemedIcon(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0, p3, p4, p5}, Lcom/android/server/pm/PackageArchiver;->storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x7d0

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageArchiver;->verifySupportsUnarchival(ILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 23
    .line 24
    const-string p1, "Installer does not support unarchival"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, p3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 40
    .line 41
    const-string p1, "Failed to obtain Installer info"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_3
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 48
    .line 49
    const-string p1, "No installer found"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final verifySupportsUnarchival(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v2, "android.intent.action.UNARCHIVE_PACKAGE"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v0, p0, p2, p1, v2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_1
    return v1
.end method
