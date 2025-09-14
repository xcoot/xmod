.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final ensureProxyAgentBindingIfRequired(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->checkProxyAgentBound(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const-string v0, "DualDARComnService"

    .line 30
    .line 31
    const-string/jumbo v2, "ensureProxyAgentBinding: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-array v3, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v0, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string p0, "DualDARComnService"

    .line 50
    .line 51
    const-string p1, "Stop to ensure binding due to agent not registered"

    .line 52
    .line 53
    new-array v0, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 69
    .line 70
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 74
    .line 75
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    .line 85
    .line 86
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mBindingChecker:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$ProxyAgentBindingChecker;->mCheckerLock:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p0

    .line 100
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    const-string p0, "DualDARComnService"

    .line 105
    .line 106
    const-string/jumbo p1, "ensureProxyAgentBinding: finished"

    .line 107
    .line 108
    .line 109
    new-array v0, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_2
    :goto_2
    return-void
.end method
