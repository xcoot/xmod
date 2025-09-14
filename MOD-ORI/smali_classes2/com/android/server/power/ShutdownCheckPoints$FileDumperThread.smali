.class public final Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBaseFile:Ljava/io/File;

.field public final mFileCountLimit:I

.field public final mInstance:Lcom/android/server/power/ShutdownCheckPoints;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "-"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    array-length v1, v0

    .line 57
    iget v2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    .line 58
    .line 59
    sub-int/2addr v1, v2

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_1
    if-ge v2, v1, :cond_1

    .line 64
    .line 65
    aget-object v3, v0, v2

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "%s-%d"

    .line 94
    .line 95
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Landroid/util/AtomicFile;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 105
    .line 106
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 107
    .line 108
    .line 109
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 110
    .line 111
    .line 112
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    .line 114
    .line 115
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    .line 119
    .line 120
    invoke-virtual {v4, v3}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catch_0
    move-exception v3

    .line 131
    goto :goto_2

    .line 132
    :catch_1
    move-exception v3

    .line 133
    const/4 v2, 0x0

    .line 134
    :goto_2
    const-string v4, "ShutdownCheckPoints"

    .line 135
    .line 136
    const-string v5, "Failed to write shutdown checkpoints"

    .line 137
    .line 138
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 149
    .line 150
    .line 151
    return-void
.end method
