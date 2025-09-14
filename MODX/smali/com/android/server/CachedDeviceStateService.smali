.class public final Lcom/android/server/CachedDeviceStateService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/CachedDeviceStateService$1;

.field public final mDeviceState:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/android/internal/os/CachedDeviceState;

    .line 6
    invoke-direct {p1}, Lcom/android/internal/os/CachedDeviceState;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 11
    new-instance p1, Lcom/android/server/CachedDeviceStateService$1;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/CachedDeviceStateService$1;-><init>(Lcom/android/server/CachedDeviceStateService;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Lcom/android/server/CachedDeviceStateService$1;

    .line 18
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne v0, p1, :cond_3

    .line 5
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const/16 v0, 0x3e8

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Lcom/android/server/CachedDeviceStateService$1;

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 41
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 43
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 49
    const/4 v1, 0x0

    .line 50
    const-string v2, "CachedDeviceStateService"

    .line 52
    const/4 v3, 0x1

    .line 53
    if-nez v0, :cond_0

    .line 55
    const-string v0, "BatteryManager null while starting CachedDeviceStateService"

    .line 57
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v3, v1

    .line 69
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 72
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 77
    move-result-object p0

    .line 78
    const-class v0, Landroid/os/PowerManager;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Landroid/os/PowerManager;

    .line 86
    if-nez p0, :cond_2

    .line 88
    const-string p0, "PowerManager null while starting CachedDeviceStateService"

    .line 90
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 97
    move-result v1

    .line 98
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 101
    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 3
    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 5
    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState;->getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    return-void
.end method
