.class public final Lcom/android/server/PACMService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mReceiverList:Ljava/util/List;


# instance fields
.field public final mAtMap:Ljava/util/LinkedHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

.field public final mHandler:Lcom/android/server/PACMService$1;

.field public final mLock:Ljava/lang/Object;

.field public final mReceiver:Lcom/android/server/PACMService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "PACMService"

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Ljava/lang/Object;

    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    .line 20
    new-instance v1, Lcom/android/server/PACMService$1;

    .line 22
    invoke-direct {v1, p0}, Lcom/android/server/PACMService$1;-><init>(Lcom/android/server/PACMService;)V

    .line 25
    iput-object v1, p0, Lcom/android/server/PACMService;->mHandler:Lcom/android/server/PACMService$1;

    .line 27
    new-instance v1, Lcom/android/server/PACMService$2;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/server/PACMService$2;-><init>(Lcom/android/server/PACMService;)V

    .line 32
    iput-object v1, p0, Lcom/android/server/PACMService;->mReceiver:Lcom/android/server/PACMService$2;

    .line 34
    iput-object p1, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    .line 36
    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/Device;

    .line 38
    invoke-direct {v1, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v1, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    .line 43
    const/4 p1, 0x2

    .line 44
    :try_start_0
    new-array v1, p1, [Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;

    .line 46
    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;

    .line 48
    invoke-direct {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;-><init>()V

    .line 51
    const/4 v3, 0x0

    .line 52
    aput-object v2, v1, v3

    .line 54
    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;

    .line 56
    invoke-direct {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;-><init>()V

    .line 59
    const/4 v4, 0x1

    .line 60
    aput-object v2, v1, v4

    .line 62
    :goto_0
    if-ge v3, p1, :cond_1

    .line 64
    aget-object v2, v1, v3

    .line 66
    iget-object v5, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->getList()Ljava/util/List;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v5, v2}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->putCommandList(Ljava/util/LinkedHashMap;Ljava/util/List;)I

    .line 75
    move-result v2

    .line 76
    if-eq v2, v4, :cond_0

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v6, "Failed to add class command list("

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, ")"

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 108
    goto :goto_0

    .line 109
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/Thread;

    .line 114
    new-instance v1, Lcom/android/server/PACMService$PACServiceSocketThread;

    .line 116
    invoke-direct {v1, p0}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;)V

    .line 119
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_3

    .line 126
    :catch_1
    move-exception p0

    .line 127
    const-string p1, "Failed to start PACM Service"

    .line 129
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_3
    const-string p0, "Success to start PACM Service(S-ver : 10.6.0/ P-ver : 1)"

    .line 137
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1e0

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    const-string p1, "PACMService"

    .line 7
    const-string v0, "PHASE_LOCK_SETTINGS_READY"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    .line 15
    const/4 p1, 0x1

    .line 16
    const-wide/16 v0, 0x7d0

    .line 18
    iget-object p0, p0, Lcom/android/server/PACMService;->mHandler:Lcom/android/server/PACMService$1;

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-string p0, "PACMService"

    .line 3
    const-string/jumbo v0, "onStart() "

    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final registerForBroadcasts()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/PACMService;->mReceiver:Lcom/android/server/PACMService$2;

    .line 3
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 5
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    const-string/jumbo v2, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v2, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 26
    sget-object p0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    .line 28
    check-cast p0, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string v0, "PACMService"

    .line 37
    const-string v1, "Failed to add Broadcast"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :goto_0
    return-void
.end method
