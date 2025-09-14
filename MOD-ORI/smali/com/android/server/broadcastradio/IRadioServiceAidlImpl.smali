.class public final Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SERVICE_NAMES:Ljava/util/List;


# instance fields
.field public final mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

.field public final mService:Lcom/android/server/broadcastradio/BroadcastRadioService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/amfm"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "/dab"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Broadcast radio service cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 10
    .line 11
    const-string p1, "Broadcast radio service implementation for AIDL HAL cannot be null"

    .line 12
    .line 13
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 8

    .line 1
    const-string v0, "BcRadioSrvAidl"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "BcRadioSrvAidl"

    .line 11
    .line 12
    const-string v1, "Adding announcement listener for %s"

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string v0, "Enabled announcement types cannot be null"

    .line 26
    .line 27
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v0, "Announcement listener cannot be null"

    .line 31
    .line 32
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string v0, "BcRadioAidlSrv"

    .line 50
    .line 51
    const-string v1, "Add AnnouncementListener with enable types %s"

    .line 52
    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-direct {v0, p2, v1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p2

    .line 74
    const/4 v1, 0x0

    .line 75
    move v2, v1

    .line 76
    move v3, v2

    .line 77
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 80
    .line 81
    .line 82
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-ge v2, v4, :cond_2

    .line 84
    .line 85
    :try_start_1
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 92
    .line 93
    invoke-virtual {v0, v4, p1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/aidl/RadioModule;[I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception v4

    .line 101
    :try_start_2
    const-string v5, "BcRadioAidlSrv"

    .line 102
    .line 103
    const-string v6, "Announcements not supported for this module"

    .line 104
    .line 105
    new-array v7, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {v5, v4, v6, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    if-nez v3, :cond_3

    .line 115
    .line 116
    const-string p0, "BcRadioAidlSrv"

    .line 117
    .line 118
    const-string p1, "There are no HAL modules that support announcements"

    .line 119
    .line 120
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_3
    return-object v0

    .line 124
    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "android.permission.DUMP"

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p1, "Permission Denial: can\'t dump AIDL BroadcastRadioService from from pid="

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, ", uid="

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " without permission android.permission.DUMP"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "BroadcastRadioService\n"

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    new-array v0, p3, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 68
    .line 69
    .line 70
    const-string p2, "AIDL HAL client:\n"

    .line 71
    .line 72
    new-array v0, p3, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p2

    .line 85
    :try_start_0
    const-string v0, "Next module id available: %d\n"

    .line 86
    .line 87
    iget v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 98
    .line 99
    .line 100
    const-string v0, "ServiceName to module id map:\n"

    .line 101
    .line 102
    new-array v1, p3, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 111
    .line 112
    check-cast v0, Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    .line 134
    const-string v2, "Service name: %s, module id: %d\n"

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_2

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 155
    .line 156
    .line 157
    const-string v0, "Radio modules [%d]:\n"

    .line 158
    .line 159
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 177
    .line 178
    .line 179
    :goto_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ge p3, v0, :cond_2

    .line 186
    .line 187
    const-string v0, "Module id=%d:\n"

    .line 188
    .line 189
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 210
    .line 211
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 221
    .line 222
    .line 223
    add-int/lit8 p3, p3, 0x1

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 227
    .line 228
    .line 229
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    throw p0
.end method

.method public final listModules()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v2, v3, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 3

    .line 1
    const-string v0, "BcRadioSrvAidl"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "BcRadioSrvAidl"

    .line 11
    .line 12
    const-string v1, "Opening module %d"

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 28
    .line 29
    .line 30
    if-eqz p4, :cond_9

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->mAidlHalClient:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v0, "BcRadioAidlSrv"

    .line 42
    .line 43
    const-string v1, "Open AIDL radio session"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_8

    .line 53
    .line 54
    if-eqz p3, :cond_7

    .line 55
    .line 56
    iget-object p3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter p3

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    const-string p0, "BcRadioAidlSrv"

    .line 70
    .line 71
    const-string p2, "Invalid module ID %d"

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    monitor-exit p3

    .line 85
    const/4 p0, 0x0

    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 91
    .line 92
    const-string p3, "Open TunerSession"

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p1, p3, v0}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter p1

    .line 103
    :try_start_1
    iget-object p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 112
    .line 113
    invoke-direct {v0, p0, v1, p4}, Lcom/android/server/broadcastradio/aidl/TunerSession;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/ITunerCallback;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 124
    .line 125
    if-eqz p3, :cond_3

    .line 126
    .line 127
    iget-object p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHalTunerCallback:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 130
    .line 131
    check-cast p3, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 132
    .line 133
    invoke-virtual {p3, p0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->setTunerCallback(Lcom/android/server/broadcastradio/aidl/RadioModule$1;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-interface {p4, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 147
    .line 148
    .line 149
    :cond_4
    if-eqz v2, :cond_5

    .line 150
    .line 151
    invoke-interface {p4, v2}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    if-eqz p2, :cond_6

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Lcom/android/server/broadcastradio/aidl/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    move-object p0, v0

    .line 160
    :goto_1
    return-object p0

    .line 161
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    throw p0

    .line 163
    :goto_3
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    throw p0

    .line 165
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string p1, "Non-audio sessions not supported with AIDL HAL"

    .line 168
    .line 169
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_8
    const-string p0, "BcRadioAidlSrv"

    .line 174
    .line 175
    const-string p1, "Cannot open tuner on AIDL HAL client for non-current user"

    .line 176
    .line 177
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 181
    .line 182
    const-string p1, "Cannot open session for non-current user"

    .line 183
    .line 184
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string p1, "Callback must not be null"

    .line 191
    .line 192
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0
.end method
