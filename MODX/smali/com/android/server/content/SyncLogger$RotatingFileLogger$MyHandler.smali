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

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 12
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 14
    invoke-static {v0, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 17
    move-result-wide v2

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    check-cast p1, [Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->openLogLocked(J)V

    .line 28
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 30
    if-nez v4, :cond_1

    .line 32
    monitor-exit v0

    .line 33
    goto/16 :goto_2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 43
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 45
    invoke-virtual {v4, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 48
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 50
    sget-object v3, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 52
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 54
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 63
    const/16 v3, 0x20

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 87
    move-result v2

    .line 88
    array-length v3, p1

    .line 89
    :goto_0
    if-ge v5, v3, :cond_2

    .line 91
    aget-object v4, p1, v5

    .line 93
    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 103
    const/16 v3, 0xa

    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 110
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 115
    iget-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 117
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 120
    sget-boolean p1, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    .line 122
    if-eqz p1, :cond_3

    .line 124
    const-string p1, "SyncLogger"

    .line 126
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception p1

    .line 137
    :try_start_2
    const-string v2, "Failed to write log"

    .line 139
    iget-boolean v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 141
    if-nez v3, :cond_3

    .line 143
    const-string v3, "SyncLogger"

    .line 145
    invoke-static {v3, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iput-boolean v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

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
