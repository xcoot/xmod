.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;

.field public final synthetic f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/chimera/PolicyHandler;

    .line 6
    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/chimera/PolicyHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 5
    const-string v1, "PolicyHandler"

    .line 7
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 9
    const-string/jumbo v3, "quick reclaim failed "

    .line 12
    const-string/jumbo v4, "finish quick reclaim for "

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v5

    .line 19
    :try_start_0
    iget-object v7, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    .line 21
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    .line 24
    move-result v7

    .line 25
    invoke-static {v7}, Landroid/os/Process;->killProcessWithMrelease(I)Z

    .line 28
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v8, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 31
    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 33
    const-string v9, ": "

    .line 35
    if-eqz v7, :cond_0

    .line 37
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, " and Processing time(ms)"

    .line 53
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    move-result-wide v7

    .line 60
    sub-long/2addr v7, v5

    .line 61
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-static {v1, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string p0, " by killProcessWithMrelease"

    .line 93
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {v1, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    goto :goto_1

    .line 112
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v4, "quick reclaim kill with exception "

    .line 117
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {v1, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p0, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 142
    :goto_1
    return-void
.end method
