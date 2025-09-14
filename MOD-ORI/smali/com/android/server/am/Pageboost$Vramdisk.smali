.class public abstract Lcom/android/server/am/Pageboost$Vramdisk;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static ENABLED:Z = false

.field public static final array:[Ljava/lang/String;

.field public static conn:Lcom/android/server/am/Pageboost$DaemonConnector;

.field public static cur_idx:I

.field public static final sLock:Ljava/lang/Object;

.field public static final sLock$1:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v0, 0x7d0

    .line 9
    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->array:[Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->sLock$1:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->sLock$1:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v2, "MM-dd HH:mm:ss.SSS"

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " "

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v1, Lcom/android/server/am/Pageboost$Vramdisk;->array:[Ljava/lang/String;

    .line 41
    .line 42
    sget v2, Lcom/android/server/am/Pageboost$Vramdisk;->cur_idx:I

    .line 43
    .line 44
    add-int/lit8 v3, v2, 0x1

    .line 45
    .line 46
    sput v3, Lcom/android/server/am/Pageboost$Vramdisk;->cur_idx:I

    .line 47
    .line 48
    rem-int/lit16 v2, v2, 0x7d0

    .line 49
    .line 50
    aput-object p0, v1, v2

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public static collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v3, v2

    .line 23
    if-gtz v3, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/16 v2, 0xe

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v4, 0xf

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 39
    .line 40
    iput v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 43
    .line 44
    sget-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 45
    .line 46
    const-string/jumbo v4, "memUsage collected : "

    .line 47
    .line 48
    .line 49
    const-string v5, " "

    .line 50
    .line 51
    invoke-static {v3, v2, v4, v5, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " for "

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "Pageboost"

    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static executeCmd(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length p1, p0

    .line 16
    add-int/2addr p1, v1

    .line 17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    array-length v0, p0

    .line 25
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    const/4 v2, 0x4

    .line 39
    if-ne p0, v0, :cond_2

    .line 40
    .line 41
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x3

    .line 55
    if-ne p0, v0, :cond_3

    .line 56
    .line 57
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    if-ne p0, v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    array-length p1, p0

    .line 84
    add-int/2addr p1, v1

    .line 85
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    array-length v0, p0

    .line 93
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    sget-object p0, Lcom/android/server/am/Pageboost$Vramdisk;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    return-void
.end method

.method public static getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/system/"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "/product/"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    const-string v0, "/data/dalvik-cache/arm/"

    .line 26
    .line 27
    const-string v1, "/data/dalvik-cache/arm64/"

    .line 28
    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "art"

    .line 34
    .line 35
    const-string/jumbo v2, "dex"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "vdex"

    .line 39
    .line 40
    .line 41
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/16 v3, 0x2f

    .line 56
    .line 57
    const/16 v4, 0x40

    .line 58
    .line 59
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "@classes."

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance v2, Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    move v4, v3

    .line 82
    :goto_1
    const/4 v5, 0x2

    .line 83
    if-ge v4, v5, :cond_3

    .line 84
    .line 85
    move v5, v3

    .line 86
    :goto_2
    const/4 v6, 0x3

    .line 87
    if-ge v5, v6, :cond_2

    .line 88
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    aget-object v7, v0, v4

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    aget-object v7, v1, v5

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    new-instance v7, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_1

    .line 121
    .line 122
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move-object v0, v2

    .line 132
    goto :goto_4

    .line 133
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    :cond_4
    :goto_4
    return-object v0
.end method

.method public static getString()Ljava/util/LinkedList;
    .locals 7

    .line 1
    const-string/jumbo v0, "boot_file"

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 11
    .line 12
    const-string v4, "/vendor/etc/vramdiskd.xml"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    move v4, v2

    .line 41
    move v5, v4

    .line 42
    :goto_0
    :try_start_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ge v4, v6, :cond_0

    .line 47
    .line 48
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move v2, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :catch_0
    move v2, v5

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_2
    move-exception v3

    .line 87
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 91
    :catch_1
    :goto_3
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 92
    .line 93
    const-string/jumbo v0, "failed to getString of /vendor/etc/vramdiskd.xml"

    .line 94
    .line 95
    .line 96
    const-string v3, "Pageboost"

    .line 97
    .line 98
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move v5, v2

    .line 102
    :goto_4
    if-lez v5, :cond_1

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_1
    const/4 v1, 0x0

    .line 106
    :goto_5
    return-object v1
.end method

.method public static print(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost$Vramdisk;->sLock$1:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    const/16 v2, 0x7d0

    .line 6
    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost$Vramdisk;->array:[Ljava/lang/String;

    .line 10
    .line 11
    aget-object v3, v2, v1

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "["

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, "] "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    aget-object v2, v2, v1

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
