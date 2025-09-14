.class public final Lcom/android/server/SKLogger$SKHandler;
.super Ljava/util/logging/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public fileOutputStream:Ljava/io/FileOutputStream;

.field public final maxSize:J

.field public final newLogFile:Ljava/lang/String;

.field public printWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "/data/misc/audit/sk.log"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getPrintWriter()V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-wide v5, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    .line 27
    .line 28
    cmp-long v3, v3, v5

    .line 29
    .line 30
    if-gez v3, :cond_0

    .line 31
    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    new-instance v3, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 44
    .line 45
    new-instance v3, Ljava/io/PrintWriter;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 48
    .line 49
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-direct {v3, v4, v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    .line 62
    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 69
    .line 70
    .line 71
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 79
    .line 80
    new-instance v0, Ljava/io/PrintWriter;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 83
    .line 84
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;ZLjava/nio/charset/Charset;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_1
    return-void
.end method

.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getFormatter()Ljava/util/logging/Formatter;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->flush()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
