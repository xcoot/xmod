.class public abstract Lcom/android/server/knox/dar/sdp/SDPLogFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final FILE_LOCK:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 23
    .line 24
    return-void
.end method

.method public static check(Ljava/io/RandomAccessFile;)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    cmp-long v0, v2, v0

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    const-wide/16 v0, 0x11

    .line 15
    .line 16
    cmp-long v0, v2, v0

    .line 17
    .line 18
    if-lez v0, :cond_4

    .line 19
    .line 20
    const-wide/32 v0, 0x200000

    .line 21
    .line 22
    .line 23
    cmp-long v2, v2, v0

    .line 24
    .line 25
    if-gtz v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    cmp-long v0, v2, v0

    .line 32
    .line 33
    if-gtz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const-wide/16 v2, 0x2

    .line 40
    .line 41
    cmp-long p0, v0, v2

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    sget-boolean p0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    .line 46
    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    const-string p0, "SDPLogFile"

    .line 50
    .line 51
    const-string v0, "Header Check : Passed!"

    .line 52
    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void

    .line 57
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string v0, "Version mismatched"

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 68
    .line 69
    const-string v0, "File corrupted"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 76
    .line 77
    const-string v0, "File size exceeded"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 84
    .line 85
    const-string v0, "Broken file header"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 92
    .line 93
    const-string v0, "File created from scratch"

    .line 94
    .line 95
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :goto_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 100
    .line 101
    const-string v1, "Unexpected error"

    .line 102
    .line 103
    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public static checkAndReset(Ljava/io/RandomAccessFile;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "UTF-8"

    .line 16
    .line 17
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "Reset reason : "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-boolean v2, Lcom/android/server/knox/dar/sdp/SDPLogFile;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const-string v2, "SDPLogFile"

    .line 50
    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    move-object v0, v1

    .line 55
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    .line 57
    array-length v1, v0

    .line 58
    int-to-long v1, v1

    .line 59
    const-wide/16 v3, 0x12

    .line 60
    .line 61
    add-long/2addr v1, v3

    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v3, 0x2

    .line 71
    .line 72
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 73
    .line 74
    .line 75
    const/16 v3, 0xa

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void
.end method
