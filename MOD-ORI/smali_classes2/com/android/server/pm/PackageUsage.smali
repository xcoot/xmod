.class public final Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsHistoricalPackageUsageAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "package-usage.list"

    .line 2
    .line 3
    .line 4
    const-string v1, "PackageUsage_DiskWriter"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 11
    .line 12
    return-void
.end method

.method public static parseAsLong(Ljava/lang/String;)J
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string v2, "Failed to parse "

    .line 10
    .line 11
    const-string v3, " as a long."

    .line 12
    .line 13
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v1
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 21
    .line 22
    const-string p1, "Unexpected EOF"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    const/16 v1, 0xa

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_1
    return-object p0

    .line 37
    :cond_2
    int-to-char v0, v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_0
.end method

.method public static readVersion0LP(Lcom/android/server/utils/WatchedArrayMap;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    .line 1
    :goto_0
    if-eqz p3, :cond_5

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v1, v2, :cond_4

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    aget-object v1, v0, p3

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_0
    const/4 v2, 0x1

    .line 28
    aget-object v0, v0, v2

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    :goto_1
    const/16 v0, 0x8

    .line 35
    .line 36
    if-ge p3, v0, :cond_3

    .line 37
    .line 38
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    if-gez p3, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    if-lt p3, v0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    aput-wide v2, v0, p3

    .line 54
    .line 55
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_3
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 64
    .line 65
    const-string p1, "Failed to parse "

    .line 66
    .line 67
    const-string p2, " as package-timestamp pair."

    .line 68
    .line 69
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_5
    return-void
.end method

.method public static readVersion1LP(Lcom/android/server/utils/WatchedArrayMap;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const-string v1, " "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    if-ne v2, v3, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aget-object v2, v1, v0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    const/16 v3, 0x8

    .line 33
    .line 34
    if-ge v0, v3, :cond_0

    .line 35
    .line 36
    add-int/lit8 v4, v0, 0x1

    .line 37
    .line 38
    aget-object v5, v1, v4

    .line 39
    .line 40
    invoke-static {v5}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    if-gez v0, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    if-lt v0, v3, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    aput-wide v5, v3, v0

    .line 60
    .line 61
    :goto_2
    move v0, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 64
    .line 65
    const-string p1, "Failed to parse "

    .line 66
    .line 67
    const-string p2, " as a timestamp array."

    .line 68
    .line 69
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_5
    return-void
.end method


# virtual methods
.method public final readInternal(Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const-string v3, "PACKAGE_USAGE__VERSION_1"

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-static {p1, v2, v0}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Lcom/android/server/utils/WatchedArrayMap;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_0
    move-object v1, v2

    .line 40
    goto :goto_7

    .line 41
    :goto_1
    move-object v1, v2

    .line 42
    goto :goto_3

    .line 43
    :catch_0
    move-object v1, v2

    .line 44
    goto :goto_5

    .line 45
    :cond_1
    invoke-static {p1, v2, v0, v1}, Lcom/android/server/pm/PackageUsage;->readVersion0LP(Lcom/android/server/utils/WatchedArrayMap;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_6

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    goto :goto_7

    .line 58
    :catch_2
    move-exception p0

    .line 59
    :goto_3
    :try_start_2
    const-string p1, "PackageManager"

    .line 60
    .line 61
    const-string v0, "Failed to read package usage times"

    .line 62
    .line 63
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_6

    .line 70
    :catch_3
    :goto_5
    const/4 p1, 0x0

    .line 71
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :goto_6
    return-void

    .line 75
    :goto_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final writeInternal(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/16 v3, 0x408

    .line 25
    .line 26
    const/16 v4, 0x1a0

    .line 27
    .line 28
    const/16 v5, 0x3e8

    .line 29
    .line 30
    invoke-static {v2, v4, v5, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "PACKAGE_USAGE__VERSION_1"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v3, 0xa

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lcom/android/server/pm/PackageSetting;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 84
    .line 85
    if-eqz v5, :cond_0

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    const-wide/16 v8, 0x0

    .line 92
    .line 93
    cmp-long v6, v6, v8

    .line 94
    .line 95
    if-nez v6, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v6, 0x0

    .line 99
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    array-length v5, v4

    .line 112
    :goto_1
    if-ge v6, v5, :cond_2

    .line 113
    .line 114
    aget-wide v7, v4, v6

    .line 115
    .line 116
    const/16 v9, 0x20

    .line 117
    .line 118
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    goto :goto_2

    .line 129
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception p1

    .line 154
    const/4 v0, 0x0

    .line 155
    :goto_2
    if-eqz v0, :cond_4

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    const-string p0, "PackageManager"

    .line 161
    .line 162
    const-string v0, "Failed to write package usage times"

    .line 163
    .line 164
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    :goto_3
    return-void
.end method
