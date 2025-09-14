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

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/BatteryService$34;->val$wirelessPowerSharingTxEvent:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 32
    .line 33
    const-wide/16 v1, 0x1f4

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lcom/android/server/BatteryService$2;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lcom/android/server/BatteryService$2;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x3

    .line 77
    if-ne v1, v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    return-void

    .line 114
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string/jumbo v2, "tx_event:0x"

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v2, p0, Lcom/android/server/BatteryService$34;->val$wirelessPowerSharingTxEvent:I

    .line 123
    .line 124
    invoke-static {v1, v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 129
    .line 130
    const-string v2, "BatteryService"

    .line 131
    .line 132
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Landroid/content/Intent;

    .line 138
    .line 139
    const/4 v3, -0x1

    .line 140
    invoke-static {v2, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->val$intent:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Landroid/content/Intent;

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Landroid/content/Intent;

    .line 152
    .line 153
    sget-object v2, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-static {p0, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
