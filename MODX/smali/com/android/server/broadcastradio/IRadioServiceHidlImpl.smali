.class public final Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field public final mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

.field public final mV1Modules:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 3
    const-string/jumbo v0, "broadcast radio service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 4
    new-instance p1, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 5
    invoke-virtual {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 8
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 11
    const-string v0, "Broadcast radio service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 12
    const-string p1, "Broadcast radio service implementation for HIDL 1 HAL cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 13
    invoke-virtual {p2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 14
    const-string p1, "Broadcast radio service implementation for HIDL 2 HAL cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method


# virtual methods
.method public final addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 3

    .line 1
    const-string v0, "BcRadioSrvHidl"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "BcRadioSrvHidl"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "Adding announcement listener for "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    const-string v0, "Enabled announcement types cannot be null"

    .line 35
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    const-string v0, "Announcement listener cannot be null"

    .line 40
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 45
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 48
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 53
    iget-object v2, v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 58
    check-cast v1, Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 63
    move-result v1

    .line 64
    xor-int/lit8 v1, v1, 0x1

    .line 66
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    if-nez v1, :cond_1

    .line 69
    :try_start_2
    const-string p1, "BcRadioSrvHidl"

    .line 71
    const-string v1, "There are no HAL 2.0 modules registered"

    .line 73
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance p1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    .line 78
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 80
    invoke-direct {p1, p2, p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    .line 83
    monitor-exit v0

    .line 84
    return-object p1

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    .line 92
    move-result-object p0

    .line 93
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    return-object p0

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :try_start_4
    throw p0

    .line 98
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    const-string p3, "android.permission.DUMP"

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string p1, "Permission Denial: can\'t dump HIDL BroadcastRadioService from from pid="

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, ", uid="

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, " without permission android.permission.DUMP"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    return-void

    .line 54
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 56
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 59
    const-string p2, "BroadcastRadioService\n"

    .line 61
    const/4 p3, 0x0

    .line 62
    new-array v0, p3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 67
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 70
    const-string p2, "HAL1 client: %s\n"

    .line 72
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 74
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 81
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 84
    iget-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter p2

    .line 87
    :try_start_0
    const-string v0, "Modules of HAL1 client: %s\n"

    .line 89
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 91
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 98
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 102
    const-string p2, "HAL2 client:\n"

    .line 104
    new-array v0, p3, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 109
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 114
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 116
    monitor-enter v0

    .line 117
    :try_start_1
    const-string p2, "Next module id available: %d\n"

    .line 119
    iget v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v1

    .line 125
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, p2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    const-string p2, "ServiceName to module id map:\n"

    .line 134
    new-array v1, p3, [Ljava/lang/Object;

    .line 136
    invoke-virtual {p1, p2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 142
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 144
    check-cast p2, Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object p2

    .line 154
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    const-string v2, "Service name: %s, module id: %d\n"

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    move-result-object v3

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 175
    move-result-object v1

    .line 176
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 183
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p0

    .line 185
    goto :goto_2

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 189
    const-string p2, "Radio modules:\n"

    .line 191
    new-array p3, p3, [Ljava/lang/Object;

    .line 193
    invoke-virtual {p1, p2, p3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 196
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 199
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 201
    check-cast p0, Landroid/util/ArrayMap;

    .line 203
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 206
    move-result-object p0

    .line 207
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object p0

    .line 211
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_2

    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object p2

    .line 221
    check-cast p2, Ljava/util/Map$Entry;

    .line 223
    const-string p3, "Module id=%d:\n"

    .line 225
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 228
    move-result-object v1

    .line 229
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p1, p3, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 236
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 239
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 242
    move-result-object p2

    .line 243
    check-cast p2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 245
    invoke-virtual {p2, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 248
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 251
    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 255
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 259
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 262
    return-void

    .line 263
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    throw p0

    .line 265
    :catchall_1
    move-exception p0

    .line 266
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    throw p0
.end method

.method public final listModules()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 6
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string v1, "BcRadio2Srv"

    .line 13
    const-string v2, "List HIDL 2.0 modules"

    .line 15
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 23
    check-cast v0, Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Collection;

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object v2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter v2

    .line 56
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    iget-object v3, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 60
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 63
    move-result v3

    .line 64
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 67
    move-result v4

    .line 68
    add-int/2addr v3, v4

    .line 69
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 74
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    return-object v1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p0

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    throw p0
.end method

.method public final openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 4

    .line 1
    const-string v0, "BcRadioSrvHidl"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "BcRadioSrvHidl"

    .line 12
    const-string v1, "Opening module "

    .line 14
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 22
    const-string v0, "Callback must not be null"

    .line 24
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 32
    iget-object v2, v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v3

    .line 41
    check-cast v1, Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    if-eqz v1, :cond_1

    .line 50
    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 55
    move-result-object p0

    .line 56
    monitor-exit v0

    .line 57
    return-object p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    .line 65
    move-result-object p0

    .line 66
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    return-object p0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :try_start_4
    throw p0

    .line 71
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    throw p0
.end method
