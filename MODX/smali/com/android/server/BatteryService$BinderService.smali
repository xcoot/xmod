.class public final Lcom/android/server/BatteryService$BinderService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    .line 3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 5
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 7
    const-string v1, "BatteryService"

    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    array-length v0, p3

    .line 17
    if-lez v0, :cond_5

    .line 19
    const-string v0, "--proto"

    .line 21
    const/4 v1, 0x0

    .line 22
    aget-object v2, p3, v1

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_5

    .line 30
    iget-object p0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 37
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 45
    const-wide v2, 0x10800000001L

    .line 50
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 53
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 55
    iget-boolean p3, p1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 57
    if-eqz p3, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-boolean p3, p1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 63
    if-eqz p3, :cond_2

    .line 65
    const/4 v1, 0x2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-boolean p3, p1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 69
    if-eqz p3, :cond_3

    .line 71
    const/4 v1, 0x4

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-boolean p1, p1, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 75
    if-eqz p1, :cond_4

    .line 77
    const/16 v1, 0x8

    .line 79
    :cond_4
    :goto_0
    const-wide v2, 0x10e00000002L

    .line 84
    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 87
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 89
    iget p1, p1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 91
    const-wide v1, 0x10500000003L

    .line 96
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 99
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 101
    iget p1, p1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 103
    const-wide v1, 0x10500000004L

    .line 108
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 111
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 113
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 115
    const-wide v1, 0x10500000005L

    .line 120
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 123
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 125
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 127
    const-wide v1, 0x10e00000006L

    .line 132
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 135
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 137
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 139
    const-wide v1, 0x10e00000007L

    .line 144
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 147
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 149
    iget-boolean p1, p1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 151
    const-wide v1, 0x10800000008L

    .line 156
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 159
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 161
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 163
    const-wide v1, 0x10500000009L

    .line 168
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 171
    const-wide v1, 0x1050000000aL

    .line 176
    const/16 p1, 0x64

    .line 178
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 181
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 183
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 185
    const-wide v1, 0x1050000000bL

    .line 190
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 193
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 195
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 197
    const-wide v1, 0x1050000000cL

    .line 202
    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 205
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 207
    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 209
    const-wide v1, 0x1090000000dL

    .line 214
    invoke-virtual {p2, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception p0

    .line 223
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    throw p0

    .line 225
    :cond_5
    iget-object p0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    .line 227
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->-$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 230
    :goto_1
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/BatteryService$Shell;

    .line 3
    iget-object v1, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    return-void
.end method
