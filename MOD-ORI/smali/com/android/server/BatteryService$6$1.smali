.class public final Lcom/android/server/BatteryService$6$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$otgEnable:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$2;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/BatteryService$2;ZB)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/BatteryService$2;ZC)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "BatteryService"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/BatteryService$6$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/BatteryService$2;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v1, "/sys/class/power_supply/battery/wc_tx_en"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v2, "success to set wirelssPowerSharingEnable as "

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo p0, "fail to disable wirelssPowerSharingEnable"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v2, "fastWirelessAutoModeEnable : "

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lcom/android/server/BatteryService$2;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 86
    .line 87
    iget-boolean p0, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    .line 88
    .line 89
    xor-int/lit8 p0, p0, 0x1

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Lcom/android/server/BatteryService$2;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 100
    .line 101
    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string v1, "/sys/class/power_supply/otg/online"

    .line 107
    .line 108
    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v2, "success to set otgEnable as "

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-boolean v2, p0, Lcom/android/server/BatteryService$6$1;->val$otgEnable:Z

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lcom/android/server/BatteryService$2;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroid/content/Intent;

    .line 146
    .line 147
    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    .line 148
    .line 149
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance v1, Lcom/android/server/BatteryService$31;

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    invoke-direct {v1, v2, v0}, Lcom/android/server/BatteryService$31;-><init>(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_1
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 165
    .line 166
    const-string/jumbo p0, "fail to set otgEnable"

    .line 167
    .line 168
    .line 169
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :goto_1
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
