.class public final Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/server/display/BrightnessThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 5
    .line 6
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/display/BrightnessThrottler;->mDeviceConfigHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/display/BrightnessThrottler;->loadThermalBrightnessThrottlingDataFromDeviceConfig()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->resetThermalThrottlingData()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
