.class public final Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemDeviceIdleHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemDeviceIdleHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;->this$0:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;->this$0:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 3
    iget-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 15
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 18
    move-result p1

    .line 19
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;

    .line 37
    invoke-interface {p2, p1}, Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;->onDeviceIdleChanged(Z)V

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    return-void
.end method
