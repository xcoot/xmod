.class public final Lcom/android/server/soundtrigger/SoundTriggerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$powerManager:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$powerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPowerModeChanged(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
