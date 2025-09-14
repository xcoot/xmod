.class public final Lcom/android/server/gpu/GpuService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method public constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    .line 6
    iget-object p1, p1, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo v0, "game_driver"

    .line 15
    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    .line 3
    iget-object v0, v0, Lcom/android/server/gpu/GpuService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "updatable_driver_production_denylists"

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    .line 21
    const-string/jumbo v2, "updatable_driver_production_denylists"

    .line 24
    const-string v3, ""

    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/gpu/GpuService;->parseDenylists(Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    .line 35
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

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
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method
