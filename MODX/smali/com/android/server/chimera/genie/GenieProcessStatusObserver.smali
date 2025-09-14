.class public final Lcom/android/server/chimera/genie/GenieProcessStatusObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

.field public mIsLLMStatusCheck:Z

.field public final mServiceThread:Lcom/android/server/ServiceThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 17
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 19
    sget-object v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 24
    if-nez v2, :cond_0

    .line 26
    new-instance v2, Lcom/android/server/ServiceThread;

    .line 28
    const-string v3, "GenAI Running Status Handler"

    .line 30
    const/16 v4, 0xa

    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-direct {v2, v4, v3, v5}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 36
    iput-object v2, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 43
    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 51
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 54
    const-string v2, "GenieProcessStatusObserver"

    .line 56
    const-string/jumbo v3, "mServiceThread started"

    .line 59
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 66
    if-nez v0, :cond_2

    .line 68
    const-string v0, "GenieProcessStatusObserver"

    .line 70
    const-string v2, "LLM Status Handler created"

    .line 72
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 77
    invoke-direct {v0, p0}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;-><init>(Lcom/android/server/chimera/genie/GenieProcessStatusObserver;)V

    .line 80
    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 82
    :cond_2
    monitor-exit v1

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public static getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final isLLMRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "GenieProcessStatusObserver"

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p0, "Context is null"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return v2

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v3, "is_llm_running"

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 25
    move-result v0

    .line 26
    iget-boolean v3, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 28
    if-nez v3, :cond_2

    .line 30
    if-ne v0, v2, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v4

    .line 34
    :cond_2
    :goto_0
    const-string/jumbo v3, "isLLMRunning: "

    .line 37
    const-string v4, ", state :"

    .line 39
    const-string v5, ", mIsLLMStatusCheck:"

    .line 41
    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v0

    .line 45
    iget-boolean p0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 47
    invoke-static {v1, v0, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 50
    return v2
.end method

.method public final onChange(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    .line 6
    const-string v0, "GenieProcessStatusObserver"

    .line 8
    if-nez p1, :cond_0

    .line 10
    const-string p0, "Context is null"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v1, "is_llm_running"

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 32
    if-eqz v1, :cond_1

    .line 34
    const/4 v3, 0x1

    .line 35
    iput-boolean v3, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mHandler:Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 45
    move-result-object v2

    .line 46
    const-wide/16 v3, 0x12c

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 54
    :goto_0
    const-string/jumbo v1, "state: "

    .line 57
    const-string/jumbo v2, "mIsLLMStatusCheck :"

    .line 60
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object p1

    .line 64
    iget-boolean p0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 66
    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 69
    return-void
.end method
