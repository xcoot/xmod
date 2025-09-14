.class public final Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncLogger$RotatingFileLogger;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 9
    .line 10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->openLogLocked(J)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 44
    .line 45
    invoke-virtual {v4, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 49
    .line 50
    sget-object v3, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const/16 v3, 0x20

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    array-length v3, p1

    .line 89
    :goto_0
    if-ge v5, v3, :cond_2

    .line 90
    .line 91
    aget-object v4, p1, v5

    .line 92
    .line 93
    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const/16 v3, 0xa

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :try_start_1
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 118
    .line 119
    .line 120
    sget-boolean p1, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    const-string p1, "SyncLogger"

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception p1

    .line 137
    :try_start_2
    const-string v2, "Failed to write log"

    .line 138
    .line 139
    iget-boolean v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 140
    .line 141
    if-nez v3, :cond_3

    .line 142
    .line 143
    const-string v3, "SyncLogger"

    .line 144
    .line 145
    invoke-static {v3, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .line 147
    .line 148
    iput-boolean v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 149
    .line 150
    :cond_3
    :goto_1
    monitor-exit v0

    .line 151
    :goto_2
    return-void

    .line 152
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0
.end method
