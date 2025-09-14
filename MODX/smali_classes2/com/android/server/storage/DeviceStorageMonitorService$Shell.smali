.class public final Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v6, "android.permission.DEVICE_POWER"

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    sparse-switch v7, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    :goto_0
    move v7, v0

    .line 32
    goto :goto_1

    .line 33
    :sswitch_0
    const-string v7, "force-not-low"

    .line 34
    .line 35
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v7, 0x2

    .line 43
    goto :goto_1

    .line 44
    :sswitch_1
    const-string v7, "force-low"

    .line 45
    .line 46
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v7, v1

    .line 54
    goto :goto_1

    .line 55
    :sswitch_2
    const-string/jumbo v7, "reset"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v7, v2

    .line 66
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :pswitch_0
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput v2, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 87
    .line 88
    iget-object p1, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    and-int/2addr p0, v1

    .line 95
    if-eqz p0, :cond_4

    .line 96
    .line 97
    iget-object p0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    .line 101
    .line 102
    iget-object p0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_1
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x3

    .line 127
    iput p1, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 128
    .line 129
    iget-object p1, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    and-int/2addr p0, v1

    .line 136
    if-eqz p0, :cond_4

    .line 137
    .line 138
    iget-object p0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    .line 142
    .line 143
    iget-object p0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 144
    .line 145
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_2
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iput v0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 168
    .line 169
    iget-object p1, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    and-int/2addr p0, v1

    .line 176
    if-eqz p0, :cond_4

    .line 177
    .line 178
    iget-object p0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 179
    .line 180
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    .line 182
    .line 183
    iget-object p0, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_2
    return v2

    .line 196
    nop

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x6761d4f -> :sswitch_2
        0x5b023572 -> :sswitch_1
        0x64de7478 -> :sswitch_0
    .end sparse-switch

    .line 198
    .line 199
    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->$r8$clinit:I

    .line 6
    .line 7
    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    .line 8
    .line 9
    const-string v1, "  help"

    .line 10
    .line 11
    const-string v2, "    Print this help text."

    .line 12
    .line 13
    const-string v3, "  force-low [-f]"

    .line 14
    .line 15
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "    Force storage to be low, freezing storage state."

    .line 19
    .line 20
    const-string v1, "    -f: force a storage change broadcast be sent, prints new sequence."

    .line 21
    .line 22
    const-string v2, "  force-not-low [-f]"

    .line 23
    .line 24
    const-string v3, "    Force storage to not be low, freezing storage state."

    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "  reset [-f]"

    .line 30
    .line 31
    const-string v2, "    Unfreeze storage state, returning to current real values."

    .line 32
    .line 33
    invoke-static {p0, v1, v0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
