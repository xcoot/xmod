.class public final Lcom/android/server/BatteryService$34;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$intent:Ljava/lang/Object;

.field public final synthetic val$wirelessPowerSharingTxEvent:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$34;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/BatteryService$34;->val$wirelessPowerSharingTxEvent:I

    iput-object p2, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/BatteryService$2;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService$34;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/BatteryService$34;->val$wirelessPowerSharingTxEvent:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/BatteryService$34;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 7
    iget v1, p0, Lcom/android/server/BatteryService$34;->val$wirelessPowerSharingTxEvent:I

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne v1, v3, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 17
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 19
    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 27
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 29
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 31
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 33
    const-wide/16 v1, 0x1f4

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 43
    check-cast v1, Lcom/android/server/BatteryService$2;

    .line 45
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 47
    iget-object v1, v1, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 54
    check-cast v1, Lcom/android/server/BatteryService$2;

    .line 56
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 58
    iget-object v1, v1, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 60
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 66
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 68
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 70
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 72
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x3

    .line 77
    if-ne v1, v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 81
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 83
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 85
    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 92
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 94
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 96
    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 98
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 101
    move-result-object v0

    .line 102
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 104
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 106
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 108
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 110
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 114
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v2, "tx_event:0x"

    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget v2, p0, Lcom/android/server/BatteryService$34;->val$wirelessPowerSharingTxEvent:I

    .line 124
    invoke-static {v1, v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 130
    const-string v2, "BatteryService"

    .line 132
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 137
    check-cast v2, Landroid/content/Intent;

    .line 139
    const/4 v3, -0x1

    .line 140
    invoke-static {v2, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 143
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 145
    check-cast p0, Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Landroid/content/Intent;

    .line 153
    sget-object v2, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {p0, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 161
    invoke-static {v0, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 164
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
