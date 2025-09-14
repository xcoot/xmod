.class public final Lcom/android/server/pm/parsing/PackageCacher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/pm/parsing/IPackageCacher;


# static fields
.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mCacheDir:Ljava/io/File;

.field public final mCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    .line 7
    .line 8
    return-void
.end method

.method public static fromCacheEntryStatic([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([BLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public static fromCacheEntryStatic([BLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 3

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    new-instance p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {p0, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 7
    new-instance p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9
    sget-object p1, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object p0
.end method

.method public static getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 1
    const-string v0, "Failed to find APEX file backing "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v2, v3}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p0}, Lcom/android/server/pm/ApexManager;->getBackingApexFile(Ljava/io/File;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-string v2, "PackageCacher"

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move-object p0, v2

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-wide v2, p0, Landroid/system/StructStat;->st_mtime:J

    .line 74
    .line 75
    iget-wide p0, p1, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    cmp-long p0, v2, p0

    .line 78
    .line 79
    if-gez p0, :cond_2

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    :cond_2
    return v1

    .line 83
    :goto_1
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    .line 84
    .line 85
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    .line 86
    .line 87
    if-eq p1, v0, :cond_3

    .line 88
    .line 89
    const-string p1, "Error while stating package cache : "

    .line 90
    .line 91
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_3
    return v1
.end method

.method public static toCacheEntryStatic(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final cacheResult(Ljava/io/File;ILcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 4

    .line 1
    const-string v0, "PackageCacher"

    .line 2
    .line 3
    const-string v1, "Unable to delete cache file: "

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_4

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 54
    .line 55
    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    .line 60
    .line 61
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_2
    move-exception p2

    .line 73
    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    :goto_2
    :try_start_6
    const-string p2, "Error writing cache entry."

    .line 78
    .line 79
    invoke-static {v0, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-static {v2, p1}, Lcom/samsung/android/server/pm/install/PackageCacherUtils;->changeModifiedTimeOfTheCacheIfNeeded(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :goto_4
    const-string p1, "Error saving package cache."

    .line 90
    .line 91
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :goto_5
    return-void
.end method

.method public final cleanCachedResult(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length p1, p0

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-ge v0, p1, :cond_1

    .line 19
    .line 20
    aget-object v1, p0, v0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Unable to clean cache file: "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "PackageCacher"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public fromCacheEntry([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([BLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getCachedResult(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntry([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_1
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    const-string p1, "PackageCacher"

    .line 50
    .line 51
    const-string v1, "Error reading package cache: "

    .line 52
    .line 53
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    .line 58
    .line 59
    return-object p2
.end method

.method public toCacheEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntryStatic(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
