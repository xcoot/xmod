.class public final Lcom/android/server/location/nsflp/NSUtLogger;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDirectorySize:J

.field public mFileCount:I

.field public mFileSizeMap:Ljava/util/Map;

.field public final mNsKmlWriter:Lcom/android/server/location/nsflp/NSKmlWriter;

.field public mOccurredExceptionCount:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/location/nsflp/NSKmlWriter;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/android/server/location/nsflp/NSKmlWriter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mNsKmlWriter:Lcom/android/server/location/nsflp/NSKmlWriter;

    .line 10
    .line 11
    return-void
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v2, "NSUtLogger"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 20
    .line 21
    const-string v4, "/data/log/gps/issuetracker/"

    .line 22
    .line 23
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    const-string v3, "Success to create the directory"

    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "Failed to create the directory"

    .line 45
    .line 46
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const-string v3, "Directory[/data/log/gps/issuetracker/] already exists"

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    move-object v3, v0

    .line 56
    :goto_1
    if-nez v3, :cond_4

    .line 57
    .line 58
    const-string/jumbo p0, "createFile, directory is null"

    .line 59
    .line 60
    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_4
    invoke-static {p0}, Lcom/android/server/location/nsflp/NSUtLogger;->makeFile(Ljava/io/File;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_5

    .line 70
    .line 71
    const-string/jumbo p0, "createFile, failed to make file"

    .line 72
    .line 73
    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v2, "NSUtLogger"

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v1, "success deleteFile "

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string/jumbo p0, "file is not existed"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return v1
.end method

.method public static isCallerSystem()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static makeFile(Ljava/io/File;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "isSuccess = false"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v3, "NSUtLogger"

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v0, "isSuccess = "

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, " exists"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :goto_1
    return v2
.end method

.method public static writeFile(Ljava/io/File;[BZ)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {v0, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p2, "Exception occurred while open file"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "NSUtLogger"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_1
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    const-string v0, "NSUtLogger"

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->path:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/server/location/nsflp/NSUtLogger;->createFile(Ljava/io/File;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string/jumbo p0, "writeFile, cannot create file"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget v2, p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->type:I

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->data:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/location/nsflp/NSUtLogger;->writeData(ILjava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Failed to writeUtLog, error="

    .line 53
    .line 54
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Failed to writeUtLog, exception="

    .line 75
    .line 76
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_2
    return-void
.end method

.method public final updateFileSizeMap(Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 10
    .line 11
    check-cast p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 20
    .line 21
    check-cast p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    sub-long v3, v1, v3

    .line 34
    .line 35
    iget-wide v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 36
    .line 37
    add-long/2addr v5, v3

    .line 38
    iput-wide v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-wide v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 42
    .line 43
    add-long/2addr v3, v1

    .line 44
    iput-wide v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 45
    .line 46
    iget p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 51
    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final writeData(ILjava/io/File;Ljava/lang/String;)V
    .locals 49

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-long v4, v0

    .line 19
    new-instance v0, Ljava/io/File;

    .line 20
    .line 21
    const-string v6, "/data/log/gps/issuetracker/"

    .line 22
    .line 23
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v7, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-nez v7, :cond_3

    .line 30
    .line 31
    new-instance v7, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v7, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-wide/16 v10, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    array-length v7, v0

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    array-length v7, v0

    .line 51
    const/4 v12, 0x0

    .line 52
    :goto_0
    if-ge v12, v7, :cond_2

    .line 53
    .line 54
    aget-object v13, v0, v12

    .line 55
    .line 56
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 57
    .line 58
    .line 59
    move-result-wide v14

    .line 60
    add-long/2addr v10, v14

    .line 61
    iget-object v9, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    check-cast v9, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget v9, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 77
    .line 78
    add-int/2addr v9, v8

    .line 79
    iput v9, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 80
    .line 81
    add-int/lit8 v12, v12, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    iput-wide v10, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 85
    .line 86
    :cond_3
    iget v0, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 87
    .line 88
    const-string v7, "NSUtLogger"

    .line 89
    .line 90
    const-wide/32 v9, 0x6400000

    .line 91
    .line 92
    .line 93
    const/16 v11, 0x1f4

    .line 94
    .line 95
    const/4 v12, 0x3

    .line 96
    if-ge v0, v11, :cond_4

    .line 97
    .line 98
    iget-wide v13, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 99
    .line 100
    cmp-long v0, v13, v9

    .line 101
    .line 102
    if-ltz v0, :cond_b

    .line 103
    .line 104
    :cond_4
    iget v0, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    .line 105
    .line 106
    if-lt v0, v12, :cond_5

    .line 107
    .line 108
    const-string/jumbo v0, "writeData, occurred exception count is over so return"

    .line 109
    .line 110
    .line 111
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_6

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 124
    .line 125
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Lcom/android/server/location/nsflp/NSUtLogger$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_7
    :try_start_0
    new-instance v6, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda1;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-static {v6}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    array-length v6, v0

    .line 154
    const/4 v13, 0x0

    .line 155
    :goto_2
    if-ge v13, v6, :cond_9

    .line 156
    .line 157
    aget-object v14, v0, v13

    .line 158
    .line 159
    invoke-virtual {v14}, Ljava/io/File;->length()J

    .line 160
    .line 161
    .line 162
    move-result-wide v16

    .line 163
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    invoke-static {v14}, Lcom/android/server/location/nsflp/NSUtLogger;->deleteFile(Ljava/io/File;)Z

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    move/from16 v18, v13

    .line 172
    .line 173
    if-eqz v14, :cond_8

    .line 174
    .line 175
    iget-wide v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 176
    .line 177
    sub-long v12, v12, v16

    .line 178
    .line 179
    iput-wide v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 180
    .line 181
    iget-object v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 182
    .line 183
    check-cast v12, Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    iget v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 189
    .line 190
    sub-int/2addr v12, v8

    .line 191
    iput v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 192
    .line 193
    :cond_8
    iget v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 194
    .line 195
    if-ge v12, v11, :cond_a

    .line 196
    .line 197
    iget-wide v12, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 198
    .line 199
    cmp-long v12, v12, v9

    .line 200
    .line 201
    if-gez v12, :cond_a

    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string/jumbo v6, "deleteOldFiles, file count="

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v6, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 212
    .line 213
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v6, ", directory size="

    .line 217
    .line 218
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-wide v9, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 222
    .line 223
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v6, ",dataLength="

    .line 227
    .line 228
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    :cond_9
    const/4 v4, 0x0

    .line 242
    goto :goto_3

    .line 243
    :cond_a
    add-int/lit8 v13, v18, 0x1

    .line 244
    .line 245
    const/4 v12, 0x3

    .line 246
    goto :goto_2

    .line 247
    :goto_3
    iput v4, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :catch_0
    move-exception v0

    .line 251
    iget v4, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    .line 252
    .line 253
    add-int/2addr v4, v8

    .line 254
    iput v4, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    .line 255
    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string/jumbo v5, "deleteOldFiles, "

    .line 259
    .line 260
    .line 261
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v0, " , count : "

    .line 272
    .line 273
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget v0, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :cond_b
    :goto_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 289
    .line 290
    move-object/from16 v4, p3

    .line 291
    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-static {v3, v4, v8}, Lcom/android/server/location/nsflp/NSUtLogger;->writeFile(Ljava/io/File;[BZ)Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_2f

    .line 301
    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string/jumbo v5, "writeData, success write data "

    .line 305
    .line 306
    .line 307
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v3}, Lcom/android/server/location/nsflp/NSUtLogger;->updateFileSizeMap(Ljava/io/File;)V

    .line 321
    .line 322
    .line 323
    const/4 v4, 0x3

    .line 324
    if-ne v2, v4, :cond_c

    .line 325
    .line 326
    return-void

    .line 327
    :cond_c
    invoke-static {}, Lcom/android/server/location/nsflp/NSUtLogger;->isCallerSystem()Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    const-string v5, ".kmz"

    .line 332
    .line 333
    const-string v6, ".txt"

    .line 334
    .line 335
    if-nez v4, :cond_d

    .line 336
    .line 337
    move-object v3, v6

    .line 338
    const/4 v9, 0x0

    .line 339
    move-object v6, v5

    .line 340
    goto/16 :goto_2c

    .line 341
    .line 342
    :cond_d
    iget-object v4, v1, Lcom/android/server/location/nsflp/NSUtLogger;->mNsKmlWriter:Lcom/android/server/location/nsflp/NSKmlWriter;

    .line 343
    .line 344
    iget-object v7, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    .line 345
    .line 346
    check-cast v7, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 349
    .line 350
    .line 351
    iget-object v7, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 352
    .line 353
    check-cast v7, Ljava/util/HashMap;

    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 356
    .line 357
    .line 358
    iget-object v7, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    .line 359
    .line 360
    check-cast v7, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 363
    .line 364
    .line 365
    const-string v7, "ENGINE_OFF"

    .line 366
    .line 367
    const-string v9, "FIRST_FIX"

    .line 368
    .line 369
    const/4 v10, 0x2

    .line 370
    :try_start_1
    new-instance v11, Ljava/io/BufferedReader;

    .line 371
    .line 372
    new-instance v12, Ljava/io/InputStreamReader;

    .line 373
    .line 374
    new-instance v13, Ljava/io/FileInputStream;

    .line 375
    .line 376
    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 377
    .line 378
    .line 379
    invoke-direct {v12, v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    .line 384
    .line 385
    :cond_e
    :goto_5
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    if-eqz v0, :cond_16

    .line 390
    .line 391
    const-string v12, "[,*]"

    .line 392
    .line 393
    if-ne v2, v8, :cond_10

    .line 394
    .line 395
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 396
    .line 397
    .line 398
    move-result v13

    .line 399
    if-eqz v13, :cond_f

    .line 400
    .line 401
    const-string v13, "RMC"

    .line 402
    .line 403
    const/4 v14, 0x3

    .line 404
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    goto :goto_6

    .line 409
    :cond_f
    const/4 v14, 0x3

    .line 410
    const/4 v13, 0x0

    .line 411
    :goto_6
    if-eqz v13, :cond_e

    .line 412
    .line 413
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getNmeaKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    if-eqz v0, :cond_e

    .line 422
    .line 423
    iget-object v12, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    .line 424
    .line 425
    check-cast v12, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :goto_7
    move-object v12, v0

    .line 432
    goto :goto_9

    .line 433
    :catchall_0
    move-exception v0

    .line 434
    goto :goto_7

    .line 435
    :cond_10
    const/4 v14, 0x3

    .line 436
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    array-length v12, v0

    .line 441
    if-ge v12, v10, :cond_11

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_11
    aget-object v12, v0, v8

    .line 445
    .line 446
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    if-nez v13, :cond_14

    .line 451
    .line 452
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-eqz v12, :cond_12

    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_12
    invoke-static {v0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getPositionKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-nez v0, :cond_13

    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_13
    iget-object v12, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 467
    .line 468
    iget-object v13, v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->provider:Ljava/lang/String;

    .line 469
    .line 470
    new-instance v15, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;

    .line 471
    .line 472
    const/4 v14, 0x1

    .line 473
    invoke-direct {v15, v14}, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 474
    .line 475
    .line 476
    check-cast v12, Ljava/util/HashMap;

    .line 477
    .line 478
    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v12

    .line 482
    check-cast v12, Ljava/util/List;

    .line 483
    .line 484
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_14
    :goto_8
    invoke-static {v0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getDebugKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-nez v0, :cond_15

    .line 493
    .line 494
    goto :goto_5

    .line 495
    :cond_15
    iget-object v12, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    .line 496
    .line 497
    check-cast v12, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    .line 501
    .line 502
    goto :goto_5

    .line 503
    :cond_16
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 504
    .line 505
    .line 506
    goto :goto_c

    .line 507
    :catch_1
    move-exception v0

    .line 508
    goto :goto_b

    .line 509
    :goto_9
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 510
    .line 511
    .line 512
    goto :goto_a

    .line 513
    :catchall_1
    move-exception v0

    .line 514
    move-object v11, v0

    .line 515
    :try_start_6
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 516
    .line 517
    .line 518
    :goto_a
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 519
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 520
    .line 521
    .line 522
    :goto_c
    new-instance v11, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n<Document>\n<name>UtLogGenerator</name><open>1</open>\n<Style id=\"lineStyleRed\"><LineStyle><color>ff0000ff</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleYellow\"><LineStyle><color>ff00fffd</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleGreen\"><LineStyle><color>ff008000</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStylePurple\"><LineStyle><color>ff800080</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleFuchsia\"><LineStyle><color>ffff00ff</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleNavy\"><LineStyle><color>ff000080</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleBlue\"><LineStyle><color>ff0000ff</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleTeal\"><LineStyle><color>ff008080</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleOlive\"><LineStyle><color>ff808000</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"pointStyleRed\"><LabelStyle><color>00ffffff</color></LabelStyle> <IconStyle><color>ff0000ff</color>\n<scale>0.5</scale>\"<Icon><href>http://maps.google.com/mapfiles/kml/shapes/placemark_square.png</href></Icon></IconStyle>\n</Style>\n<Style id=\"pointStyleYellow\"><LabelStyle><color>00ffffff</color></LabelStyle> <IconStyle><color>ff00fffd</color>\n<scale>0.5</scale>\"<Icon><href>http://maps.google.com/mapfiles/kml/shapes/placemark_square.png</href></Icon></IconStyle>\n</Style>\n<Style id=\"pointStyleGreen\"><LabelStyle><color>00ffffff</color></LabelStyle> <IconStyle><color>ff008000</color>\n<scale>0.5</scale>\"<Icon><href>http://maps.google.com/mapfiles/kml/shapes/placemark_square.png</href></Icon></IconStyle>\n</Style>\n<Style id=\"sn_wht-diamond\"><IconStyle><color>ffff0000</color><scale>1.0</scale><Icon><href>http://maps.google.com/mapfiles/kml/paddle/wht-diamond.png</href></Icon></IconStyle></Style><Style id=\"sn_forbidden\"><IconStyle><color>ffff0c00</color><scale>1.0</scale><Icon><href>http://maps.google.com/mapfiles/kml/shapes/forbidden.png</href></Icon></IconStyle></Style><Style id=\"sn_arrow\"><IconStyle><color>ffff0c00</color><scale>1.0</scale><Icon><href>http://maps.google.com/mapfiles/kml/shapes/arrow.png</href></Icon></IconStyle></Style>"

    .line 525
    .line 526
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const-string v12, "</coordinates>\n</LineString>\n</Placemark>"

    .line 530
    .line 531
    const-string v13, "</Folder>"

    .line 532
    .line 533
    const-string v14, "</MultiGeometry>\n</Placemark>\n"

    .line 534
    .line 535
    const-string v15, ",0 \n</coordinates></Point>\n"

    .line 536
    .line 537
    const-string v10, ","

    .line 538
    .line 539
    const-string v8, "</description>\n<MultiGeometry>\n<Point><coordinates>"

    .line 540
    .line 541
    const-string v3, " bearing="

    .line 542
    .line 543
    const-string v1, " speed="

    .line 544
    .line 545
    move-object/from16 v17, v5

    .line 546
    .line 547
    const-string v5, " longitude="

    .line 548
    .line 549
    move-object/from16 v18, v6

    .line 550
    .line 551
    const-string v6, "</when></TimeStamp><description>latitude="

    .line 552
    .line 553
    move-object/from16 v19, v7

    .line 554
    .line 555
    const-string v7, "%04d-%02d-%02dT%02d:%02d:%02d"

    .line 556
    .line 557
    move-object/from16 v20, v9

    .line 558
    .line 559
    const-string v9, " - "

    .line 560
    .line 561
    move-object/from16 v21, v11

    .line 562
    .line 563
    const-string v11, "<Placemark>\n<name>P"

    .line 564
    .line 565
    move-object/from16 v22, v12

    .line 566
    .line 567
    const-string v12, ""

    .line 568
    .line 569
    move-object/from16 v23, v12

    .line 570
    .line 571
    const/4 v12, 0x1

    .line 572
    if-ne v2, v12, :cond_18

    .line 573
    .line 574
    const-string v2, "HHmmssddMMyy"

    .line 575
    .line 576
    new-instance v12, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    move-object/from16 v24, v13

    .line 582
    .line 583
    new-instance v13, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    const-string v0, "<Folder id=\"Data\">\n<name>NMEA</name>\n<Placemark>\n<name>Line</name><styleUrl>#lineStyleRed</styleUrl><LineString>\n<extrude>1</extrude>\n<tessellate>1</tessellate><coordinates>\n"

    .line 586
    .line 587
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-object v0, v4, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    .line 591
    .line 592
    check-cast v0, Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 595
    .line 596
    .line 597
    move-result-object v19

    .line 598
    const/4 v0, 0x0

    .line 599
    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 600
    .line 601
    .line 602
    move-result v20

    .line 603
    if-eqz v20, :cond_17

    .line 604
    .line 605
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v20

    .line 609
    move-object/from16 v25, v4

    .line 610
    .line 611
    move-object/from16 v4, v20

    .line 612
    .line 613
    check-cast v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 614
    .line 615
    move-object/from16 v26, v14

    .line 616
    .line 617
    move-object/from16 v27, v15

    .line 618
    .line 619
    iget-wide v14, v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 620
    .line 621
    move-object/from16 v28, v10

    .line 622
    .line 623
    iget-object v10, v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->time:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const/16 v14, 0x2c

    .line 629
    .line 630
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    iget-wide v14, v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    .line 634
    .line 635
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    move-object/from16 v29, v8

    .line 639
    .line 640
    const/16 v8, 0xa

    .line 641
    .line 642
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    move-object/from16 p1, v13

    .line 646
    .line 647
    const/4 v8, 0x1

    .line 648
    add-int/lit8 v13, v0, 0x1

    .line 649
    .line 650
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    :try_start_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    new-instance v8, Ljava/text/SimpleDateFormat;
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_4

    .line 664
    .line 665
    move/from16 v20, v13

    .line 666
    .line 667
    :try_start_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 668
    .line 669
    .line 670
    move-result-object v13

    .line 671
    invoke-direct {v8, v2, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 675
    .line 676
    .line 677
    move-result-object v8

    .line 678
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 682
    .line 683
    .line 684
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 685
    .line 686
    .line 687
    move-result-object v8

    .line 688
    const-string v13, "UTC %04d/%02d/%02d, %02d:%02d:%02d"
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_3

    .line 689
    .line 690
    move-object/from16 v30, v9

    .line 691
    .line 692
    const/4 v9, 0x1

    .line 693
    :try_start_9
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 694
    .line 695
    .line 696
    move-result v16

    .line 697
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 698
    .line 699
    .line 700
    move-result-object v31

    .line 701
    const/4 v9, 0x2

    .line 702
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 703
    .line 704
    .line 705
    move-result v32

    .line 706
    const/4 v9, 0x1

    .line 707
    add-int/lit8 v32, v32, 0x1

    .line 708
    .line 709
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 710
    .line 711
    .line 712
    move-result-object v32

    .line 713
    const/4 v9, 0x5

    .line 714
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 715
    .line 716
    .line 717
    move-result v33

    .line 718
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    .line 720
    .line 721
    move-result-object v33

    .line 722
    const/16 v9, 0xb

    .line 723
    .line 724
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 725
    .line 726
    .line 727
    move-result v34

    .line 728
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v34

    .line 732
    const/16 v9, 0xc

    .line 733
    .line 734
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 735
    .line 736
    .line 737
    move-result v35

    .line 738
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 739
    .line 740
    .line 741
    move-result-object v35

    .line 742
    const/16 v9, 0xd

    .line 743
    .line 744
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 745
    .line 746
    .line 747
    move-result v0

    .line 748
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v36

    .line 752
    filled-new-array/range {v31 .. v36}, [Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-static {v8, v13, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_2

    .line 760
    goto :goto_f

    .line 761
    :catch_2
    move-exception v0

    .line 762
    goto :goto_e

    .line 763
    :catch_3
    move-exception v0

    .line 764
    move-object/from16 v30, v9

    .line 765
    .line 766
    goto :goto_e

    .line 767
    :catch_4
    move-exception v0

    .line 768
    move-object/from16 v30, v9

    .line 769
    .line 770
    move/from16 v20, v13

    .line 771
    .line 772
    :goto_e
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 773
    .line 774
    .line 775
    move-object/from16 v0, v23

    .line 776
    .line 777
    :goto_f
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    const-string v0, "</name><styleUrl>#pointStyleRed</styleUrl><TimeStamp><when>"

    .line 781
    .line 782
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    :try_start_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 790
    .line 791
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    invoke-direct {v8, v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 806
    .line 807
    .line 808
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 809
    .line 810
    .line 811
    move-result-object v8

    .line 812
    const/4 v9, 0x1

    .line 813
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 814
    .line 815
    .line 816
    move-result v10

    .line 817
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    .line 819
    .line 820
    move-result-object v31

    .line 821
    const/4 v10, 0x2

    .line 822
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    .line 823
    .line 824
    .line 825
    move-result v13

    .line 826
    add-int/2addr v13, v9

    .line 827
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 828
    .line 829
    .line 830
    move-result-object v32

    .line 831
    const/4 v9, 0x5

    .line 832
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 833
    .line 834
    .line 835
    move-result v10

    .line 836
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object v33

    .line 840
    const/16 v9, 0xb

    .line 841
    .line 842
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 843
    .line 844
    .line 845
    move-result v10

    .line 846
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 847
    .line 848
    .line 849
    move-result-object v34

    .line 850
    const/16 v9, 0xc

    .line 851
    .line 852
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 853
    .line 854
    .line 855
    move-result v10

    .line 856
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 857
    .line 858
    .line 859
    move-result-object v35

    .line 860
    const/16 v9, 0xd

    .line 861
    .line 862
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 867
    .line 868
    .line 869
    move-result-object v36

    .line 870
    filled-new-array/range {v31 .. v36}, [Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-static {v8, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_5

    .line 878
    goto :goto_10

    .line 879
    :catch_5
    move-exception v0

    .line 880
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 881
    .line 882
    .line 883
    move-object/from16 v0, v23

    .line 884
    .line 885
    :goto_10
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    iget-wide v8, v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 898
    .line 899
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    iget v0, v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    .line 906
    .line 907
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    iget v0, v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->course:F

    .line 914
    .line 915
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    move-object/from16 v10, v29

    .line 919
    .line 920
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    move-object/from16 v8, v28

    .line 927
    .line 928
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    move-object/from16 v9, v27

    .line 935
    .line 936
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-static {v4}, Lcom/android/server/location/nsflp/NSKmlWriter;->getCourseArrow(Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    move-object/from16 v4, v26

    .line 947
    .line 948
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    move-object/from16 v13, p1

    .line 952
    .line 953
    move-object v14, v4

    .line 954
    move-object v15, v9

    .line 955
    move/from16 v0, v20

    .line 956
    .line 957
    move-object/from16 v4, v25

    .line 958
    .line 959
    move-object/from16 v9, v30

    .line 960
    .line 961
    move-object/from16 v47, v10

    .line 962
    .line 963
    move-object v10, v8

    .line 964
    move-object/from16 v8, v47

    .line 965
    .line 966
    goto/16 :goto_d

    .line 967
    .line 968
    :cond_17
    move-object/from16 v25, v4

    .line 969
    .line 970
    move-object/from16 p1, v13

    .line 971
    .line 972
    move-object/from16 v13, v24

    .line 973
    .line 974
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    move-object/from16 v1, p1

    .line 978
    .line 979
    move-object/from16 v2, v22

    .line 980
    .line 981
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    move-object/from16 v12, v21

    .line 992
    .line 993
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    move-object/from16 v14, v25

    .line 997
    .line 998
    iget-object v0, v14, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    .line 999
    .line 1000
    check-cast v0, Ljava/util/ArrayList;

    .line 1001
    .line 1002
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1003
    .line 1004
    .line 1005
    move-object v3, v12

    .line 1006
    goto/16 :goto_28

    .line 1007
    .line 1008
    :cond_18
    move-object/from16 v30, v9

    .line 1009
    .line 1010
    move-object v9, v15

    .line 1011
    move-object/from16 v12, v21

    .line 1012
    .line 1013
    move-object/from16 v2, v22

    .line 1014
    .line 1015
    move-object/from16 v47, v14

    .line 1016
    .line 1017
    move-object v14, v4

    .line 1018
    move-object/from16 v4, v47

    .line 1019
    .line 1020
    move-object/from16 v48, v10

    .line 1021
    .line 1022
    move-object v10, v8

    .line 1023
    move-object/from16 v8, v48

    .line 1024
    .line 1025
    iget-object v0, v14, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 1026
    .line 1027
    check-cast v0, Ljava/util/HashMap;

    .line 1028
    .line 1029
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v15

    .line 1037
    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-eqz v0, :cond_2d

    .line 1042
    .line 1043
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    move-object/from16 p1, v15

    .line 1048
    .line 1049
    move-object v15, v0

    .line 1050
    check-cast v15, Ljava/lang/String;

    .line 1051
    .line 1052
    move-object/from16 v21, v12

    .line 1053
    .line 1054
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v22, v2

    .line 1060
    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    const-string v0, "<Folder id=\"Data\">\n<name>"

    .line 1064
    .line 1065
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    move-object/from16 v24, v13

    .line 1069
    .line 1070
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    move-object/from16 v25, v13

    .line 1076
    .line 1077
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    move-object/from16 v26, v13

    .line 1083
    .line 1084
    const/4 v13, 0x1

    .line 1085
    invoke-static {v15, v13}, Lcom/android/server/location/nsflp/NSKmlWriter;->getStyle(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    move-object/from16 v27, v4

    .line 1090
    .line 1091
    const/4 v13, 0x0

    .line 1092
    invoke-static {v15, v13}, Lcom/android/server/location/nsflp/NSKmlWriter;->getStyle(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v4

    .line 1096
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    const-string v13, "</name><Placemark>\n<name>Line</name><styleUrl>"

    .line 1100
    .line 1101
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    const-string v13, "</styleUrl><LineString>\n<extrude>1</extrude>\n<tessellate>1</tessellate><coordinates>\n"

    .line 1108
    .line 1109
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    move-object/from16 v28, v13

    .line 1113
    .line 1114
    new-instance v13, Ljava/util/HashMap;

    .line 1115
    .line 1116
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .line 1118
    .line 1119
    iget-object v0, v14, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 1120
    .line 1121
    check-cast v0, Ljava/util/HashMap;

    .line 1122
    .line 1123
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    check-cast v0, Ljava/util/List;

    .line 1128
    .line 1129
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v29

    .line 1136
    const/4 v0, 0x0

    .line 1137
    :goto_12
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v31

    .line 1141
    move-object/from16 v32, v14

    .line 1142
    .line 1143
    const-string/jumbo v14, "gps"

    .line 1144
    .line 1145
    .line 1146
    if-eqz v31, :cond_1a

    .line 1147
    .line 1148
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v31

    .line 1152
    move-object/from16 v33, v13

    .line 1153
    .line 1154
    move-object/from16 v13, v31

    .line 1155
    .line 1156
    check-cast v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 1157
    .line 1158
    move-object/from16 v34, v14

    .line 1159
    .line 1160
    move-object/from16 v31, v15

    .line 1161
    .line 1162
    iget-wide v14, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 1163
    .line 1164
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    const/16 v14, 0x2c

    .line 1168
    .line 1169
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    iget-wide v14, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    .line 1173
    .line 1174
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    move-object/from16 v35, v9

    .line 1178
    .line 1179
    const/16 v9, 0xa

    .line 1180
    .line 1181
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    const/16 v16, 0x1

    .line 1185
    .line 1186
    add-int/lit8 v9, v0, 0x1

    .line 1187
    .line 1188
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    move/from16 v36, v9

    .line 1195
    .line 1196
    move-object/from16 v9, v30

    .line 1197
    .line 1198
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    .line 1201
    iget-object v0, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->time:Ljava/lang/String;

    .line 1202
    .line 1203
    move-object/from16 v30, v11

    .line 1204
    .line 1205
    const-string v11, "</name><styleUrl>"

    .line 1206
    .line 1207
    move-object/from16 v37, v9

    .line 1208
    .line 1209
    const-string v9, "</styleUrl><TimeStamp><when>"

    .line 1210
    .line 1211
    invoke-static {v12, v0, v11, v4, v9}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    :try_start_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v9
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_d

    .line 1218
    move-object/from16 v38, v4

    .line 1219
    .line 1220
    const/4 v11, 0x1

    .line 1221
    :try_start_c
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 1222
    .line 1223
    .line 1224
    move-result v4

    .line 1225
    new-instance v11, Ljava/text/SimpleDateFormat;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_c

    .line 1226
    .line 1227
    move-object/from16 v39, v2

    .line 1228
    .line 1229
    :try_start_d
    const-string v2, "MM-dd.HH:mm:ss.SSS"
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_b

    .line 1230
    .line 1231
    move-object/from16 v40, v8

    .line 1232
    .line 1233
    :try_start_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v8

    .line 1237
    invoke-direct {v11, v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1248
    .line 1249
    .line 1250
    const/4 v2, 0x1

    .line 1251
    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 1252
    .line 1253
    .line 1254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    .line 1259
    .line 1260
    .line 1261
    move-result v4

    .line 1262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v41

    .line 1266
    const/4 v4, 0x2

    .line 1267
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    .line 1268
    .line 1269
    .line 1270
    move-result v8

    .line 1271
    add-int/2addr v8, v2

    .line 1272
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v42
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_a

    .line 1276
    const/4 v2, 0x5

    .line 1277
    :try_start_f
    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    .line 1278
    .line 1279
    .line 1280
    move-result v4

    .line 1281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v43
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_9

    .line 1285
    const/16 v4, 0xb

    .line 1286
    .line 1287
    :try_start_10
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    .line 1288
    .line 1289
    .line 1290
    move-result v8

    .line 1291
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v44
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1295
    const/16 v8, 0xc

    .line 1296
    .line 1297
    :try_start_11
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    .line 1298
    .line 1299
    .line 1300
    move-result v11

    .line 1301
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v45
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_11} :catch_7

    .line 1305
    const/16 v11, 0xd

    .line 1306
    .line 1307
    :try_start_12
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 1308
    .line 1309
    .line 1310
    move-result v9

    .line 1311
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v46

    .line 1315
    filled-new-array/range {v41 .. v46}, [Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v9

    .line 1319
    invoke-static {v0, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_6

    .line 1323
    goto :goto_19

    .line 1324
    :catch_6
    move-exception v0

    .line 1325
    goto :goto_18

    .line 1326
    :catch_7
    move-exception v0

    .line 1327
    :goto_13
    const/16 v11, 0xd

    .line 1328
    .line 1329
    goto :goto_18

    .line 1330
    :catch_8
    move-exception v0

    .line 1331
    :goto_14
    const/16 v8, 0xc

    .line 1332
    .line 1333
    goto :goto_13

    .line 1334
    :catch_9
    move-exception v0

    .line 1335
    :goto_15
    const/16 v4, 0xb

    .line 1336
    .line 1337
    goto :goto_14

    .line 1338
    :catch_a
    move-exception v0

    .line 1339
    :goto_16
    const/4 v2, 0x5

    .line 1340
    goto :goto_15

    .line 1341
    :catch_b
    move-exception v0

    .line 1342
    :goto_17
    move-object/from16 v40, v8

    .line 1343
    .line 1344
    goto :goto_16

    .line 1345
    :catch_c
    move-exception v0

    .line 1346
    move-object/from16 v39, v2

    .line 1347
    .line 1348
    goto :goto_17

    .line 1349
    :catch_d
    move-exception v0

    .line 1350
    move-object/from16 v39, v2

    .line 1351
    .line 1352
    move-object/from16 v38, v4

    .line 1353
    .line 1354
    goto :goto_17

    .line 1355
    :goto_18
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1356
    .line 1357
    .line 1358
    move-object/from16 v0, v23

    .line 1359
    .line 1360
    :goto_19
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    move-object v9, v5

    .line 1373
    iget-wide v4, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 1374
    .line 1375
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    iget v0, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    .line 1382
    .line 1383
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    iget v0, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->course:F

    .line 1390
    .line 1391
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    move-object/from16 v2, v40

    .line 1401
    .line 1402
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    move-object/from16 v8, v35

    .line 1409
    .line 1410
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    .line 1413
    invoke-static {v13}, Lcom/android/server/location/nsflp/NSKmlWriter;->getCourseArrow(Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;)Ljava/lang/String;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v0

    .line 1417
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    .line 1419
    .line 1420
    move-object/from16 v11, v27

    .line 1421
    .line 1422
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    .line 1425
    move-object/from16 v27, v1

    .line 1426
    .line 1427
    move-object/from16 v1, v31

    .line 1428
    .line 1429
    move-object/from16 v31, v3

    .line 1430
    .line 1431
    move-object/from16 v3, v34

    .line 1432
    .line 1433
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v0

    .line 1437
    if-eqz v0, :cond_19

    .line 1438
    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    new-instance v3, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;

    .line 1458
    .line 1459
    const/4 v4, 0x0

    .line 1460
    invoke-direct {v3, v4}, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1461
    .line 1462
    .line 1463
    iget-object v4, v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 1464
    .line 1465
    move-object/from16 v5, v33

    .line 1466
    .line 1467
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    check-cast v3, Ljava/util/List;

    .line 1472
    .line 1473
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    goto :goto_1a

    .line 1477
    :cond_19
    move-object/from16 v5, v33

    .line 1478
    .line 1479
    :goto_1a
    move-object v15, v1

    .line 1480
    move-object v13, v5

    .line 1481
    move-object v5, v9

    .line 1482
    move-object/from16 v1, v27

    .line 1483
    .line 1484
    move-object/from16 v3, v31

    .line 1485
    .line 1486
    move-object/from16 v14, v32

    .line 1487
    .line 1488
    move/from16 v0, v36

    .line 1489
    .line 1490
    move-object/from16 v4, v38

    .line 1491
    .line 1492
    move-object v9, v8

    .line 1493
    move-object/from16 v27, v11

    .line 1494
    .line 1495
    move-object/from16 v11, v30

    .line 1496
    .line 1497
    move-object/from16 v30, v37

    .line 1498
    .line 1499
    move-object v8, v2

    .line 1500
    move-object/from16 v2, v39

    .line 1501
    .line 1502
    goto/16 :goto_12

    .line 1503
    .line 1504
    :cond_1a
    move-object/from16 v39, v2

    .line 1505
    .line 1506
    move-object/from16 v31, v3

    .line 1507
    .line 1508
    move-object v2, v8

    .line 1509
    move-object v8, v9

    .line 1510
    move-object v3, v14

    .line 1511
    move-object/from16 v4, v24

    .line 1512
    .line 1513
    move-object/from16 v37, v30

    .line 1514
    .line 1515
    move-object v9, v5

    .line 1516
    move-object/from16 v30, v11

    .line 1517
    .line 1518
    move-object v5, v13

    .line 1519
    move-object/from16 v11, v27

    .line 1520
    .line 1521
    move-object/from16 v27, v1

    .line 1522
    .line 1523
    move-object v1, v15

    .line 1524
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    move-object/from16 v13, v22

    .line 1528
    .line 1529
    move-object/from16 v14, v39

    .line 1530
    .line 1531
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    if-eqz v0, :cond_2c

    .line 1539
    .line 1540
    move-object/from16 v1, v32

    .line 1541
    .line 1542
    iget-object v0, v1, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    .line 1543
    .line 1544
    check-cast v0, Ljava/util/ArrayList;

    .line 1545
    .line 1546
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    if-nez v0, :cond_23

    .line 1551
    .line 1552
    const-string v0, "<Folder>\n<name>Debug</name>"

    .line 1553
    .line 1554
    move-object/from16 v3, v26

    .line 1555
    .line 1556
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    .line 1558
    .line 1559
    iget-object v0, v1, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    .line 1560
    .line 1561
    check-cast v0, Ljava/util/ArrayList;

    .line 1562
    .line 1563
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v0

    .line 1567
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1568
    .line 1569
    .line 1570
    move-result v15

    .line 1571
    if-eqz v15, :cond_22

    .line 1572
    .line 1573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v15

    .line 1577
    check-cast v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;

    .line 1578
    .line 1579
    move-object/from16 v22, v0

    .line 1580
    .line 1581
    iget-object v0, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    .line 1582
    .line 1583
    move-object/from16 v40, v2

    .line 1584
    .line 1585
    move-object/from16 v2, v20

    .line 1586
    .line 1587
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v0

    .line 1591
    move-object/from16 v20, v2

    .line 1592
    .line 1593
    const-string v2, "0</coordinates></Point></Placemark>"

    .line 1594
    .line 1595
    move-object/from16 v24, v6

    .line 1596
    .line 1597
    const-string v6, "<Placemark>\n<name>#"

    .line 1598
    .line 1599
    move-object/from16 v26, v7

    .line 1600
    .line 1601
    iget-object v7, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->message:Ljava/lang/String;

    .line 1602
    .line 1603
    move-object/from16 v35, v8

    .line 1604
    .line 1605
    iget-object v8, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->time:Ljava/lang/String;

    .line 1606
    .line 1607
    move-object/from16 v29, v9

    .line 1608
    .line 1609
    iget-object v9, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->receivedTime:Ljava/lang/String;

    .line 1610
    .line 1611
    move-object/from16 v32, v10

    .line 1612
    .line 1613
    const-string v10, "</p>"

    .line 1614
    .line 1615
    move-object/from16 v33, v11

    .line 1616
    .line 1617
    const-string v11, "<p>"

    .line 1618
    .line 1619
    move-object/from16 v34, v13

    .line 1620
    .line 1621
    const-string v13, "\\|"

    .line 1622
    .line 1623
    move-object/from16 v36, v1

    .line 1624
    .line 1625
    iget-object v1, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->latitude:Ljava/lang/String;

    .line 1626
    .line 1627
    move-object/from16 v39, v12

    .line 1628
    .line 1629
    iget-object v12, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->longitude:Ljava/lang/String;

    .line 1630
    .line 1631
    move-object/from16 v41, v14

    .line 1632
    .line 1633
    iget-object v14, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    .line 1634
    .line 1635
    move-object/from16 v43, v4

    .line 1636
    .line 1637
    move-object/from16 v42, v5

    .line 1638
    .line 1639
    iget-wide v4, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->sessionNumber:J

    .line 1640
    .line 1641
    if-eqz v0, :cond_1c

    .line 1642
    .line 1643
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1647
    .line 1648
    .line 1649
    const/16 v0, 0x20

    .line 1650
    .line 1651
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    .line 1654
    const-string v0, "</name><description>\n<![CDATA[<div style=\"white-space: nowrap;\">\n<p><b>* Session start time : "

    .line 1655
    .line 1656
    move-object/from16 v4, v37

    .line 1657
    .line 1658
    invoke-static {v3, v14, v4, v9, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    const-string v0, "</b></p>\n<p><b>** Location history around 1sec based on engine on</b></p>\n"

    .line 1665
    .line 1666
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    array-length v5, v0

    .line 1674
    const/4 v6, 0x0

    .line 1675
    :goto_1c
    if-ge v6, v5, :cond_1b

    .line 1676
    .line 1677
    aget-object v7, v0, v6

    .line 1678
    .line 1679
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    .line 1687
    .line 1688
    add-int/lit8 v6, v6, 0x1

    .line 1689
    .line 1690
    goto :goto_1c

    .line 1691
    :cond_1b
    const-string v0, "</div>]]></description><styleUrl>#sn_wht-diamond</styleUrl><Point><gx:drawOrder>1</gx:drawOrder><coordinates>"

    .line 1692
    .line 1693
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    .line 1695
    .line 1696
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    .line 1698
    .line 1699
    const/16 v5, 0x2c

    .line 1700
    .line 1701
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    .line 1710
    move-object v1, v4

    .line 1711
    move-object/from16 v37, v19

    .line 1712
    .line 1713
    :goto_1d
    const/16 v2, 0x2c

    .line 1714
    .line 1715
    goto :goto_1e

    .line 1716
    :cond_1c
    move-object v0, v2

    .line 1717
    move-object/from16 v2, v19

    .line 1718
    .line 1719
    move-object/from16 v19, v1

    .line 1720
    .line 1721
    move-object/from16 v1, v37

    .line 1722
    .line 1723
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v37

    .line 1727
    if-eqz v37, :cond_21

    .line 1728
    .line 1729
    move-object/from16 v37, v2

    .line 1730
    .line 1731
    const-string v2, "/"

    .line 1732
    .line 1733
    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v2

    .line 1737
    array-length v7, v2

    .line 1738
    move-object/from16 v44, v12

    .line 1739
    .line 1740
    const/4 v12, 0x2

    .line 1741
    if-ge v7, v12, :cond_1d

    .line 1742
    .line 1743
    :goto_1e
    move-object/from16 v0, v22

    .line 1744
    .line 1745
    move-object/from16 v6, v24

    .line 1746
    .line 1747
    move-object/from16 v7, v26

    .line 1748
    .line 1749
    move-object/from16 v9, v29

    .line 1750
    .line 1751
    move-object/from16 v10, v32

    .line 1752
    .line 1753
    move-object/from16 v11, v33

    .line 1754
    .line 1755
    move-object/from16 v13, v34

    .line 1756
    .line 1757
    move-object/from16 v8, v35

    .line 1758
    .line 1759
    move-object/from16 v19, v37

    .line 1760
    .line 1761
    move-object/from16 v12, v39

    .line 1762
    .line 1763
    move-object/from16 v2, v40

    .line 1764
    .line 1765
    move-object/from16 v14, v41

    .line 1766
    .line 1767
    move-object/from16 v5, v42

    .line 1768
    .line 1769
    move-object/from16 v4, v43

    .line 1770
    .line 1771
    move-object/from16 v37, v1

    .line 1772
    .line 1773
    move-object/from16 v1, v36

    .line 1774
    .line 1775
    goto/16 :goto_1b

    .line 1776
    .line 1777
    :cond_1d
    const/4 v7, 0x0

    .line 1778
    aget-object v12, v2, v7

    .line 1779
    .line 1780
    const/4 v7, 0x1

    .line 1781
    aget-object v2, v2, v7

    .line 1782
    .line 1783
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1787
    .line 1788
    .line 1789
    const/16 v6, 0x20

    .line 1790
    .line 1791
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1792
    .line 1793
    .line 1794
    const-string v6, "</name><description>\n<![CDATA[<div style=\"white-space: nowrap;\">\n<p><b>* Last fix time : "

    .line 1795
    .line 1796
    invoke-static {v3, v14, v1, v9, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    .line 1801
    .line 1802
    const-string v6, ", Last interval="

    .line 1803
    .line 1804
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    .line 1807
    iget-object v6, v15, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->lastInterval:Ljava/lang/String;

    .line 1808
    .line 1809
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    const-string v6, "</b></p>\n<p><b>** Location history around 1sec based on engine off</b></p>\n"

    .line 1813
    .line 1814
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v2

    .line 1821
    array-length v6, v2

    .line 1822
    const/4 v8, 0x0

    .line 1823
    :goto_1f
    if-ge v8, v6, :cond_1f

    .line 1824
    .line 1825
    aget-object v9, v2, v8

    .line 1826
    .line 1827
    const-string v14, ";"

    .line 1828
    .line 1829
    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v9

    .line 1833
    array-length v14, v9

    .line 1834
    const/4 v15, 0x0

    .line 1835
    :goto_20
    if-ge v15, v14, :cond_1e

    .line 1836
    .line 1837
    aget-object v7, v9, v15

    .line 1838
    .line 1839
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    add-int/lit8 v15, v15, 0x1

    .line 1849
    .line 1850
    const/4 v7, 0x1

    .line 1851
    goto :goto_20

    .line 1852
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    .line 1853
    .line 1854
    const/4 v7, 0x1

    .line 1855
    goto :goto_1f

    .line 1856
    :cond_1f
    const-string v2, "</div>]]></description><styleUrl>#sn_forbidden</styleUrl><Point><gx:drawOrder>1</gx:drawOrder><coordinates>"

    .line 1857
    .line 1858
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    .line 1860
    .line 1861
    move-object/from16 v2, v44

    .line 1862
    .line 1863
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    .line 1865
    .line 1866
    const/16 v6, 0x2c

    .line 1867
    .line 1868
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1869
    .line 1870
    .line 1871
    move-object/from16 v6, v19

    .line 1872
    .line 1873
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    .line 1875
    .line 1876
    const-string v7, "0</coordinates></Point></Placemark><Placemark>\n<name>#"

    .line 1877
    .line 1878
    const-string v8, " SUPL_HISTORY</name><visibility>0</visibility><description>\n<![CDATA[<div style=\"white-space: nowrap;\">\n"

    .line 1879
    .line 1880
    invoke-static {v3, v7, v4, v5, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v4

    .line 1887
    array-length v5, v4

    .line 1888
    const/4 v7, 0x0

    .line 1889
    :goto_21
    if-ge v7, v5, :cond_20

    .line 1890
    .line 1891
    aget-object v8, v4, v7

    .line 1892
    .line 1893
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    .line 1901
    .line 1902
    add-int/lit8 v7, v7, 0x1

    .line 1903
    .line 1904
    goto :goto_21

    .line 1905
    :cond_20
    const-string v4, "</div>]]></description><styleUrl>#sn_arrow</styleUrl><Point><gx:drawOrder>1</gx:drawOrder><coordinates>"

    .line 1906
    .line 1907
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    .line 1909
    .line 1910
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    .line 1912
    .line 1913
    const/16 v2, 0x2c

    .line 1914
    .line 1915
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1916
    .line 1917
    .line 1918
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_1e

    .line 1925
    .line 1926
    :cond_21
    move-object/from16 v37, v2

    .line 1927
    .line 1928
    goto/16 :goto_1d

    .line 1929
    .line 1930
    :cond_22
    move-object/from16 v36, v1

    .line 1931
    .line 1932
    move-object/from16 v40, v2

    .line 1933
    .line 1934
    move-object/from16 v42, v5

    .line 1935
    .line 1936
    move-object/from16 v24, v6

    .line 1937
    .line 1938
    move-object/from16 v26, v7

    .line 1939
    .line 1940
    move-object/from16 v35, v8

    .line 1941
    .line 1942
    move-object/from16 v29, v9

    .line 1943
    .line 1944
    move-object/from16 v32, v10

    .line 1945
    .line 1946
    move-object/from16 v33, v11

    .line 1947
    .line 1948
    move-object/from16 v39, v12

    .line 1949
    .line 1950
    move-object/from16 v34, v13

    .line 1951
    .line 1952
    move-object/from16 v41, v14

    .line 1953
    .line 1954
    move-object/from16 v1, v37

    .line 1955
    .line 1956
    const/16 v2, 0x2c

    .line 1957
    .line 1958
    move-object/from16 v37, v19

    .line 1959
    .line 1960
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    .line 1962
    .line 1963
    goto :goto_22

    .line 1964
    :cond_23
    move-object/from16 v36, v1

    .line 1965
    .line 1966
    move-object/from16 v40, v2

    .line 1967
    .line 1968
    move-object/from16 v42, v5

    .line 1969
    .line 1970
    move-object/from16 v24, v6

    .line 1971
    .line 1972
    move-object/from16 v35, v8

    .line 1973
    .line 1974
    move-object/from16 v29, v9

    .line 1975
    .line 1976
    move-object/from16 v32, v10

    .line 1977
    .line 1978
    move-object/from16 v33, v11

    .line 1979
    .line 1980
    move-object/from16 v39, v12

    .line 1981
    .line 1982
    move-object/from16 v34, v13

    .line 1983
    .line 1984
    move-object/from16 v41, v14

    .line 1985
    .line 1986
    move-object/from16 v3, v26

    .line 1987
    .line 1988
    move-object/from16 v1, v37

    .line 1989
    .line 1990
    const/16 v2, 0x2c

    .line 1991
    .line 1992
    move-object/from16 v26, v7

    .line 1993
    .line 1994
    move-object/from16 v37, v19

    .line 1995
    .line 1996
    :goto_22
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->isEmpty()Z

    .line 1997
    .line 1998
    .line 1999
    move-result v0

    .line 2000
    if-nez v0, :cond_2b

    .line 2001
    .line 2002
    const-string v0, "<Folder>\n<name>Signal</name>"

    .line 2003
    .line 2004
    move-object/from16 v5, v25

    .line 2005
    .line 2006
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    .line 2008
    .line 2009
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v0

    .line 2013
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v0

    .line 2017
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2018
    .line 2019
    .line 2020
    move-result v6

    .line 2021
    if-eqz v6, :cond_2a

    .line 2022
    .line 2023
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v6

    .line 2027
    check-cast v6, Ljava/util/Map$Entry;

    .line 2028
    .line 2029
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v7

    .line 2033
    check-cast v7, Ljava/util/List;

    .line 2034
    .line 2035
    if-eqz v7, :cond_29

    .line 2036
    .line 2037
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v6

    .line 2041
    check-cast v6, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2042
    .line 2043
    const-string v8, "<Placemark>\n<name>"

    .line 2044
    .line 2045
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2049
    .line 2050
    .line 2051
    const-string v8, "</name><visibility>0</visibility><styleUrl>"

    .line 2052
    .line 2053
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    .line 2055
    .line 2056
    sget-object v8, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2057
    .line 2058
    invoke-virtual {v8, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v8

    .line 2062
    if-eqz v8, :cond_24

    .line 2063
    .line 2064
    const-string v6, "#lineStylePurple"

    .line 2065
    .line 2066
    goto :goto_24

    .line 2067
    :cond_24
    sget-object v8, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2068
    .line 2069
    invoke-virtual {v8, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 2070
    .line 2071
    .line 2072
    move-result v8

    .line 2073
    if-eqz v8, :cond_25

    .line 2074
    .line 2075
    const-string v6, "#lineStyleFuchsia"

    .line 2076
    .line 2077
    goto :goto_24

    .line 2078
    :cond_25
    sget-object v8, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2079
    .line 2080
    invoke-virtual {v8, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 2081
    .line 2082
    .line 2083
    move-result v8

    .line 2084
    if-eqz v8, :cond_26

    .line 2085
    .line 2086
    const-string v6, "#lineStyleNavy"

    .line 2087
    .line 2088
    goto :goto_24

    .line 2089
    :cond_26
    sget-object v8, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2090
    .line 2091
    invoke-virtual {v8, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 2092
    .line 2093
    .line 2094
    move-result v8

    .line 2095
    if-eqz v8, :cond_27

    .line 2096
    .line 2097
    const-string v6, "#lineStyleBlue"

    .line 2098
    .line 2099
    goto :goto_24

    .line 2100
    :cond_27
    sget-object v8, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 2101
    .line 2102
    invoke-virtual {v8, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v6

    .line 2106
    if-eqz v6, :cond_28

    .line 2107
    .line 2108
    const-string v6, "#lineStyleTeal"

    .line 2109
    .line 2110
    goto :goto_24

    .line 2111
    :cond_28
    const-string v6, "#lineStyleOlive"

    .line 2112
    .line 2113
    :goto_24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    .line 2115
    .line 2116
    move-object/from16 v6, v28

    .line 2117
    .line 2118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    .line 2120
    .line 2121
    invoke-interface {v7}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v7

    .line 2125
    const-string v8, "["

    .line 2126
    .line 2127
    move-object/from16 v9, v23

    .line 2128
    .line 2129
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v7

    .line 2133
    const-string v8, "]"

    .line 2134
    .line 2135
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v7

    .line 2139
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    .line 2141
    .line 2142
    const-string v7, "</coordinates>\n</LineString></Placemark>"

    .line 2143
    .line 2144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    .line 2146
    .line 2147
    goto :goto_25

    .line 2148
    :cond_29
    move-object/from16 v9, v23

    .line 2149
    .line 2150
    move-object/from16 v6, v28

    .line 2151
    .line 2152
    :goto_25
    move-object/from16 v28, v6

    .line 2153
    .line 2154
    move-object/from16 v23, v9

    .line 2155
    .line 2156
    goto/16 :goto_23

    .line 2157
    .line 2158
    :cond_2a
    move-object/from16 v9, v23

    .line 2159
    .line 2160
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    .line 2162
    .line 2163
    :goto_26
    move-object/from16 v6, v39

    .line 2164
    .line 2165
    move-object/from16 v7, v41

    .line 2166
    .line 2167
    goto :goto_27

    .line 2168
    :cond_2b
    move-object/from16 v9, v23

    .line 2169
    .line 2170
    move-object/from16 v5, v25

    .line 2171
    .line 2172
    goto :goto_26

    .line 2173
    :cond_2c
    move-object/from16 v40, v2

    .line 2174
    .line 2175
    move-object/from16 v24, v6

    .line 2176
    .line 2177
    move-object/from16 v35, v8

    .line 2178
    .line 2179
    move-object/from16 v29, v9

    .line 2180
    .line 2181
    move-object/from16 v33, v11

    .line 2182
    .line 2183
    move-object/from16 v34, v13

    .line 2184
    .line 2185
    move-object/from16 v9, v23

    .line 2186
    .line 2187
    move-object/from16 v5, v25

    .line 2188
    .line 2189
    move-object/from16 v3, v26

    .line 2190
    .line 2191
    move-object/from16 v36, v32

    .line 2192
    .line 2193
    move-object/from16 v1, v37

    .line 2194
    .line 2195
    const/16 v2, 0x2c

    .line 2196
    .line 2197
    move-object/from16 v26, v7

    .line 2198
    .line 2199
    move-object/from16 v32, v10

    .line 2200
    .line 2201
    move-object/from16 v37, v19

    .line 2202
    .line 2203
    move-object v6, v12

    .line 2204
    move-object v7, v14

    .line 2205
    :goto_27
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2206
    .line 2207
    .line 2208
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v0

    .line 2218
    move-object/from16 v3, v21

    .line 2219
    .line 2220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    .line 2222
    .line 2223
    move-object/from16 v15, p1

    .line 2224
    .line 2225
    move-object v12, v3

    .line 2226
    move-object v13, v4

    .line 2227
    move-object/from16 v23, v9

    .line 2228
    .line 2229
    move-object/from16 v6, v24

    .line 2230
    .line 2231
    move-object/from16 v7, v26

    .line 2232
    .line 2233
    move-object/from16 v5, v29

    .line 2234
    .line 2235
    move-object/from16 v11, v30

    .line 2236
    .line 2237
    move-object/from16 v3, v31

    .line 2238
    .line 2239
    move-object/from16 v10, v32

    .line 2240
    .line 2241
    move-object/from16 v4, v33

    .line 2242
    .line 2243
    move-object/from16 v2, v34

    .line 2244
    .line 2245
    move-object/from16 v9, v35

    .line 2246
    .line 2247
    move-object/from16 v14, v36

    .line 2248
    .line 2249
    move-object/from16 v19, v37

    .line 2250
    .line 2251
    move-object/from16 v8, v40

    .line 2252
    .line 2253
    move-object/from16 v30, v1

    .line 2254
    .line 2255
    move-object/from16 v1, v27

    .line 2256
    .line 2257
    goto/16 :goto_11

    .line 2258
    .line 2259
    :cond_2d
    move-object v3, v12

    .line 2260
    move-object v5, v14

    .line 2261
    iget-object v0, v5, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 2262
    .line 2263
    check-cast v0, Ljava/util/HashMap;

    .line 2264
    .line 2265
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2266
    .line 2267
    .line 2268
    iget-object v0, v5, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    .line 2269
    .line 2270
    check-cast v0, Ljava/util/ArrayList;

    .line 2271
    .line 2272
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2273
    .line 2274
    .line 2275
    :goto_28
    const-string v0, "</Document></kml>"

    .line 2276
    .line 2277
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    .line 2279
    .line 2280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v0

    .line 2284
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v1

    .line 2288
    const-string v2, ".kml"

    .line 2289
    .line 2290
    move-object/from16 v3, v18

    .line 2291
    .line 2292
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v1

    .line 2296
    new-instance v4, Ljava/io/File;

    .line 2297
    .line 2298
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2299
    .line 2300
    .line 2301
    invoke-static {v4}, Lcom/android/server/location/nsflp/NSUtLogger;->makeFile(Ljava/io/File;)Z

    .line 2302
    .line 2303
    .line 2304
    :try_start_13
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2305
    .line 2306
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2307
    .line 2308
    .line 2309
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_10

    .line 2310
    const/4 v5, 0x0

    .line 2311
    :try_start_14
    invoke-static {v4, v0, v5}, Lcom/android/server/location/nsflp/NSUtLogger;->writeFile(Ljava/io/File;[BZ)Z

    .line 2312
    .line 2313
    .line 2314
    move-result v0
    :try_end_14
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_f

    .line 2315
    if-nez v0, :cond_2e

    .line 2316
    .line 2317
    move v8, v5

    .line 2318
    move-object/from16 v6, v17

    .line 2319
    .line 2320
    goto :goto_2b

    .line 2321
    :cond_2e
    move-object/from16 v6, v17

    .line 2322
    .line 2323
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v0

    .line 2327
    new-instance v1, Ljava/io/File;

    .line 2328
    .line 2329
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2330
    .line 2331
    .line 2332
    :try_start_15
    invoke-static {v4, v1}, Lcom/android/server/location/nsflp/NSKmlWriter;->createZipFile(Ljava/io/File;Ljava/io/File;)V

    .line 2333
    .line 2334
    .line 2335
    invoke-static {v4}, Lcom/android/server/location/nsflp/NSUtLogger;->deleteFile(Ljava/io/File;)Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 2336
    .line 2337
    .line 2338
    const/4 v8, 0x1

    .line 2339
    goto :goto_2b

    .line 2340
    :catch_e
    move-exception v0

    .line 2341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2342
    .line 2343
    .line 2344
    :goto_29
    move v8, v5

    .line 2345
    goto :goto_2b

    .line 2346
    :catch_f
    move-exception v0

    .line 2347
    move-object/from16 v6, v17

    .line 2348
    .line 2349
    goto :goto_2a

    .line 2350
    :catch_10
    move-exception v0

    .line 2351
    move-object/from16 v6, v17

    .line 2352
    .line 2353
    const/4 v5, 0x0

    .line 2354
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 2355
    .line 2356
    .line 2357
    goto :goto_29

    .line 2358
    :goto_2b
    move v9, v8

    .line 2359
    :goto_2c
    if-eqz v9, :cond_30

    .line 2360
    .line 2361
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 2362
    .line 2363
    .line 2364
    move-result-object v0

    .line 2365
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2366
    .line 2367
    .line 2368
    move-result-object v0

    .line 2369
    new-instance v1, Ljava/io/File;

    .line 2370
    .line 2371
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2372
    .line 2373
    .line 2374
    move-object/from16 v2, p0

    .line 2375
    .line 2376
    invoke-virtual {v2, v1}, Lcom/android/server/location/nsflp/NSUtLogger;->updateFileSizeMap(Ljava/io/File;)V

    .line 2377
    .line 2378
    .line 2379
    goto :goto_2d

    .line 2380
    :cond_2f
    const-string/jumbo v0, "writeData, failed write data"

    .line 2381
    .line 2382
    .line 2383
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    .line 2385
    .line 2386
    :cond_30
    :goto_2d
    return-void
.end method
