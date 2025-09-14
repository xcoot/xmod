.class public final Lcom/android/server/sepunion/EngmodeService;
.super Lcom/samsung/android/sepunion/IEngmodeService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/EngmodeService$2;

.field public final mContext:Landroid/content/Context;

.field public mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field public mNeedChangeFlag:Z

.field public mNeedUpdate:Z

.field public mNetworkCallback:Lcom/android/server/sepunion/EngmodeService$3;

.field public mRunTimeTask:Ljava/util/TimerTask;

.field public mTimeThread:Ljava/lang/Thread;

.field public mTimerObserve:Ljava/util/Timer;

.field public mUpdateTimer:Ljava/util/Timer;


# direct methods
.method public static -$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "connectivity"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v2, 0x10

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/android/server/sepunion/EngmodeService$3;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/android/server/sepunion/EngmodeService$3;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Lcom/android/server/sepunion/EngmodeService$3;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mNetworkCallback:Lcom/android/server/sepunion/EngmodeService$3;

    .line 43
    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    :goto_0
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IEngmodeService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/EngmodeService$2;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Lcom/android/server/sepunion/EngmodeService$2;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    .line 25
    .line 26
    const-string p0, "engmode_service"

    .line 27
    .line 28
    const-string p1, "EM Service is started"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "\n##### EngmodeService #####\n##### (dumpsys sepunion EngmodeService) #####\n"

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string p1, "engmode_service"

    .line 6
    .line 7
    const-string/jumbo v0, "onBootPhase() boot completed"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService;->mBootCompleteReceiver:Lcom/android/server/sepunion/EngmodeService$2;

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
