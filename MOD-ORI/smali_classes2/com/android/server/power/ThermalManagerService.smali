.class public final Lcom/android/server/power/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

.field public mIsStatusOverride:Z

.field public final mLock:Ljava/lang/Object;

.field final mService:Landroid/os/IThermalService$Stub;

.field public mStatus:I

.field public final mTemperatureMap:Landroid/util/ArrayMap;

.field final mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field public final mThermalEventListeners:Landroid/os/RemoteCallbackList;

.field public final mThermalStatusListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public static -$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/os/Temperature;

    .line 20
    .line 21
    invoke-static {v3, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 5
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 9
    new-instance v0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 10
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    if-eqz p2, :cond_0

    .line 12
    new-instance p1, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    invoke-virtual {p2, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V

    :cond_0
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    return-void
.end method

.method public static dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "\t"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public static dumpTemperatureThresholds(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/thermal/TemperatureThreshold;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "\tTemperatureThreshold{mType="

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", mName="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", mHotThrottlingThresholds="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 45
    .line 46
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", mColdThrottlingThresholds="

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string/jumbo v0, "}"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public static postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/os/Temperature;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance v0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-string p0, "ThermalManagerService"

    .line 31
    .line 32
    const-string p1, "Thermal callback failed to queue"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p1, "HAL Ready: "

    .line 2
    .line 3
    const-string p3, "Thermal Status: "

    .line 4
    .line 5
    const-string v0, "IsStatusOverride: "

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "ThermalManagerService"

    .line 12
    .line 13
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "ThermalEventListeners:"

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 50
    .line 51
    const-string v4, "\t"

    .line 52
    .line 53
    invoke-virtual {v0, p2, v4}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "ThermalStatusListeners:"

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 62
    .line 63
    const-string v4, "\t"

    .line 64
    .line 65
    invoke-virtual {v0, p2, v4}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget p3, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 74
    .line 75
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p3, "Cached temperatures:"

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-static {p2, p3}, Lcom/android/server/power/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_1

    .line 127
    .line 128
    const-string p1, "HAL connection:"

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->dump(Ljava/io/PrintWriter;)V

    .line 136
    .line 137
    .line 138
    const-string p1, "Current temperatures from HAL:"

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 144
    .line 145
    const/4 p3, 0x0

    .line 146
    invoke-virtual {p1, p3, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p2, p1}, Lcom/android/server/power/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V

    .line 151
    .line 152
    .line 153
    const-string p1, "Current cooling devices from HAL:"

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 159
    .line 160
    invoke-virtual {p1, p3, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(IZ)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p2, p1}, Lcom/android/server/power/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V

    .line 165
    .line 166
    .line 167
    const-string p1, "Temperature static thresholds from HAL:"

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 173
    .line 174
    invoke-virtual {p1, p3, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(IZ)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p2, p1}, Lcom/android/server/power/ThermalManagerService;->dumpTemperatureThresholds(Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    goto :goto_2

    .line 184
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowThermalHeadroomThresholds()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_2

    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 192
    .line 193
    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 194
    .line 195
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    :try_start_3
    const-string p3, "Temperature headroom thresholds:"

    .line 197
    .line 198
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 204
    .line 205
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    monitor-exit p1

    .line 213
    goto :goto_1

    .line 214
    :catchall_1
    move-exception p0

    .line 215
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 217
    :catchall_2
    move-exception p0

    .line 218
    goto :goto_3

    .line 219
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 224
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 225
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    .line 227
    .line 228
    throw p0
.end method

.method public final notifyEventListenersLocked(Landroid/os/Temperature;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/os/IThermalEventListener;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-static {p1, v2, v3}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    filled-new-array {v0, v1, v2, p1, p0}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const/16 p1, 0xab1

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 8

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_8

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    if-nez v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    .line 21
    .line 22
    new-instance v5, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v5, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;-><init>(Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 41
    .line 42
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 43
    .line 44
    new-instance v5, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v5, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    invoke-direct {v2, v5, v6}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>(Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;I)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :cond_2
    if-nez v2, :cond_3

    .line 60
    .line 61
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 62
    .line 63
    new-instance v5, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-direct {v5, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    .line 66
    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-direct {v2, v5, v6}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>(Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :cond_3
    if-nez v2, :cond_4

    .line 79
    .line 80
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;

    .line 81
    .line 82
    new-instance v5, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v5, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v1, v2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 91
    .line 92
    iput-object v5, v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 93
    .line 94
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :cond_4
    if-nez v2, :cond_5

    .line 101
    .line 102
    const-string v2, "ThermalManagerService"

    .line 103
    .line 104
    const-string v3, "No Thermal HAL service on this device"

    .line 105
    .line 106
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    monitor-exit v0

    .line 110
    goto :goto_4

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 112
    .line 113
    invoke-virtual {v2, v4, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_6

    .line 124
    .line 125
    const-string v6, "ThermalManagerService"

    .line 126
    .line 127
    const-string v7, "Thermal HAL reported invalid data, abort connection"

    .line 128
    .line 129
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_6
    move v6, v4

    .line 133
    :goto_2
    if-ge v6, v5, :cond_7

    .line 134
    .line 135
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Landroid/os/Temperature;

    .line 140
    .line 141
    invoke-virtual {p0, v7, v4}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v6, v6, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateThresholds()V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    .line 159
    .line 160
    monitor-exit v0

    .line 161
    goto :goto_4

    .line 162
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    throw p0

    .line 164
    :cond_8
    :goto_4
    const/16 v0, 0x3e8

    .line 165
    .line 166
    if-ne p1, v0, :cond_9

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    const-class v0, Landroid/app/StatsManager;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Landroid/app/StatsManager;

    .line 177
    .line 178
    if-eqz p1, :cond_9

    .line 179
    .line 180
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 181
    .line 182
    new-instance v2, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    .line 183
    .line 184
    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    .line 185
    .line 186
    .line 187
    const/16 p0, 0x27d9

    .line 188
    .line 189
    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "thermalservice"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onTemperatureChanged(Landroid/os/Temperature;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/os/Temperature;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 37
    .line 38
    .line 39
    :cond_2
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final onTemperatureMapChangedLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/os/Temperature;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x3

    .line 24
    if-eq v4, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x2

    .line 31
    if-ne v4, v5, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lt v4, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final setStatusLocked(I)V
    .locals 5

    .line 1
    const-string v0, "/data/data/com.sec.android.sdhms/sdhms_cooldown_disable"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-ge v0, p1, :cond_2

    .line 24
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/os/IThermalStatusListener;

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-direct {v3, v4, p0, v1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    const-string v1, "ThermalManagerService"

    .line 50
    .line 51
    const-string v2, "Thermal callback failed to queue"

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method
