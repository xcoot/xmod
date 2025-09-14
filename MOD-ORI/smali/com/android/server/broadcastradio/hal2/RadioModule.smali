.class public final Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlTunerSessions:Ljava/util/Set;

.field public mAntennaConnected:Ljava/lang/Boolean;

.field public mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field public final mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mHalTunerCallback:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field public final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

.field public mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;


# direct methods
.method public constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 32
    .line 33
    new-instance v0, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 49
    .line 50
    new-instance p1, Landroid/os/Handler;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 62
    .line 63
    const-string p2, "BcRadio2Srv.module"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 69
    .line 70
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .locals 10

    .line 1
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    .line 2
    .line 3
    const-string v1, "BcRadio2Srv.module"

    .line 4
    .line 5
    const-string v2, "Try loading module for idx "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", fqName "

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    :catch_0
    :cond_0
    move-object v4, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v2, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    instance-of v5, v4, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    check-cast v4, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v2, v4, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .line 59
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    :goto_0
    if-nez v4, :cond_4

    .line 86
    .line 87
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v0, "No service found for fqName "

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-object v3

    .line 108
    :catch_1
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    .line 111
    .line 112
    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v5, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-direct {v5, v6, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object v6, v4

    .line 122
    check-cast v6, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    .line 123
    .line 124
    invoke-virtual {v6, v5}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->getAmFmRegionConfig(Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;)V

    .line 125
    .line 126
    .line 127
    new-instance v5, Landroid/os/HwParcel;

    .line 128
    .line 129
    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Landroid/os/HwParcel;

    .line 136
    .line 137
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    .line 139
    .line 140
    :try_start_3
    iget-object v7, v6, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 141
    .line 142
    const/4 v8, 0x3

    .line 143
    const/4 v9, 0x0

    .line 144
    invoke-interface {v7, v8, v5, v0, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt32()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    invoke-static {v0}, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-nez v5, :cond_5

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    move-object v7, v3

    .line 165
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v2, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v2, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 175
    .line 176
    invoke-static {p0, p1, v0, v2, v7}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 181
    .line 182
    invoke-direct {v0, v4, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 188
    .line 189
    .line 190
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 191
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v2, "Failed to load module "

    .line 194
    .line 195
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    return-object v3
.end method


# virtual methods
.method public final addAnnouncementListener([ILcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;)Lcom/android/server/broadcastradio/hal2/RadioModule$3;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 5
    .line 6
    const-string v3, "Add AnnouncementListener"

    .line 7
    .line 8
    invoke-virtual {v2, v3, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v2, p1

    .line 17
    move v3, v0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    aget v4, p1, v3

    .line 21
    .line 22
    int-to-byte v4, v4

    .line 23
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Landroid/util/MutableInt;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {p1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    .line 40
    .line 41
    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct {v3, v4, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 51
    .line 52
    check-cast p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance p2, Landroid/os/HwParcel;

    .line 58
    .line 59
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    .line 63
    .line 64
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroid/os/HwParcel;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 79
    .line 80
    const/4 v3, 0x6

    .line 81
    invoke-interface {p0, v3, p2, v1, v0}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const/4 v0, 0x0

    .line 99
    if-nez p2, :cond_1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const-string v3, "android.hardware.broadcastradio@2.0::ICloseHandle"

    .line 103
    .line 104
    invoke-interface {p2, v3}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    instance-of v5, v4, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;

    .line 111
    .line 112
    if-eqz v5, :cond_2

    .line 113
    .line 114
    move-object v0, v4

    .line 115
    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object p2, v4, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_4

    .line 138
    .line 139
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v5, :cond_3

    .line 150
    .line 151
    move-object v0, v4

    .line 152
    :catch_0
    :cond_4
    :goto_1
    :try_start_2
    iput p0, p1, Landroid/util/MutableInt;->value:I

    .line 153
    .line 154
    iput-object v0, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 157
    .line 158
    .line 159
    const-string p0, "addAnnouncementListener"

    .line 160
    .line 161
    iget p1, p1, Landroid/util/MutableInt;->value:I

    .line 162
    .line 163
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    .line 167
    .line 168
    invoke-direct {p0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :catchall_0
    move-exception p0

    .line 173
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 174
    .line 175
    .line 176
    throw p0
.end method

.method public final closeSessions()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 7
    .line 8
    const-string v3, "Close TunerSessions"

    .line 9
    .line 10
    new-array v4, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v2, v3, v4}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 19
    .line 20
    check-cast v3, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    new-array v4, v3, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 29
    .line 30
    check-cast v5, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 36
    .line 37
    check-cast p0, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 40
    .line 41
    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    if-ge v0, v3, :cond_0

    .line 44
    .line 45
    aget-object p0, v4, v0

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method public final dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "RadioModule\n"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    const-string v0, "BroadcastRadioService: %s\n"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 21
    .line 22
    .line 23
    const-string v0, "Properties: %s\n"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 26
    .line 27
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    const-string v2, "HIDL 2.0 HAL TunerSession: %s\n"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 40
    .line 41
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 46
    .line 47
    .line 48
    const-string v2, "Is antenna connected? "

    .line 49
    .line 50
    new-array v3, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    const-string/jumbo v2, "null\n"

    .line 60
    .line 61
    .line 62
    new-array v3, v1, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_0
    const-string v3, "%s\n"

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    const-string v2, "Yes"

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string v2, "No"

    .line 82
    .line 83
    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 88
    .line 89
    .line 90
    :goto_1
    const-string v2, "Current ProgramInfo: %s\n"

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 93
    .line 94
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 99
    .line 100
    .line 101
    const-string v2, "ProgramInfoCache: %s\n"

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 104
    .line 105
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 110
    .line 111
    .line 112
    const-string v2, "Union of AIDL ProgramFilters: %s\n"

    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 115
    .line 116
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    .line 122
    .line 123
    const-string v2, "AIDL TunerSessions:\n"

    .line 124
    .line 125
    new-array v3, v1, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 134
    .line 135
    check-cast v2, Landroid/util/ArraySet;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 152
    .line 153
    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    const-string v0, "Radio module events:\n"

    .line 162
    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    throw p0
.end method

.method public final fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 6

    .line 1
    const-string v0, "BcRadio2Srv.module"

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 8
    .line 9
    check-cast v2, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 27
    .line 28
    iget v5, v4, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserId:I

    .line 29
    .line 30
    if-eq v5, v1, :cond_0

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    iget-object v5, v4, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 36
    .line 37
    invoke-interface {p1, v5}, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v4

    .line 42
    const-string v5, "Failed to invoke ITunerCallback: "

    .line 43
    .line 44
    invoke-static {v0, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_1
    const-string v5, "Removing dead TunerSession"

    .line 49
    .line 50
    invoke-static {v0, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    new-array p1, p1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 68
    .line 69
    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final fireLater(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v7, v1

    .line 13
    move v6, v2

    .line 14
    move-object v4, v3

    .line 15
    move-object v5, v4

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    if-eqz v8, :cond_7

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    check-cast v8, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 27
    .line 28
    iget-object v9, v8, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v9

    .line 31
    :try_start_0
    iget-object v8, v8, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 32
    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    move-object v8, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v8, v8, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 38
    .line 39
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-nez v4, :cond_2

    .line 44
    .line 45
    new-instance v4, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-nez v9, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_3

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_6

    .line 104
    .line 105
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_5

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_3
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    or-int/2addr v6, v9

    .line 131
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    and-int/2addr v7, v8

    .line 136
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    throw p0

    .line 140
    :cond_7
    if-nez v4, :cond_8

    .line 141
    .line 142
    move-object v0, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    .line 145
    .line 146
    invoke-direct {v0, v4, v5, v6, v7}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 147
    .line 148
    .line 149
    :goto_4
    if-nez v0, :cond_a

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 152
    .line 153
    if-nez p1, :cond_9

    .line 154
    .line 155
    return-void

    .line 156
    :cond_9
    iput-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 157
    .line 158
    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance p1, Landroid/os/HwParcel;

    .line 164
    .line 165
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Landroid/os/HwParcel;

    .line 174
    .line 175
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    .line 177
    .line 178
    :try_start_3
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 179
    .line 180
    const/4 v1, 0x6

    .line 181
    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    .line 189
    .line 190
    :try_start_4
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catchall_1
    move-exception p0

    .line 195
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 196
    .line 197
    .line 198
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 199
    :catch_0
    move-exception p0

    .line 200
    const-string p1, "BcRadio2Srv.module"

    .line 201
    .line 202
    const-string/jumbo v0, "mHalTunerSession.stopProgramListUpdates() failed: "

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    :goto_5
    return-void

    .line 209
    :cond_a
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_d

    .line 216
    .line 217
    if-eqz p1, :cond_c

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 220
    .line 221
    iget-object v0, p1, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 222
    .line 223
    monitor-enter v0

    .line 224
    :try_start_5
    iget-object v2, p1, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 225
    .line 226
    if-nez v2, :cond_b

    .line 227
    .line 228
    monitor-exit v0

    .line 229
    goto :goto_7

    .line 230
    :catchall_2
    move-exception p0

    .line 231
    goto :goto_6

    .line 232
    :cond_b
    const/16 v3, 0x64

    .line 233
    .line 234
    const/16 v4, 0x1f4

    .line 235
    .line 236
    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;ZII)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 241
    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 246
    throw p0

    .line 247
    :cond_c
    :goto_7
    return-void

    .line 248
    :cond_d
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 249
    .line 250
    :try_start_7
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    const-string/jumbo p1, "startProgramListUpdates"

    .line 261
    .line 262
    .line 263
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :catch_1
    move-exception p0

    .line 268
    const-string p1, "BcRadio2Srv.module"

    .line 269
    .line 270
    const-string/jumbo v0, "mHalTunerSession.startProgramListUpdates() failed: "

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .line 275
    .line 276
    :goto_8
    return-void
.end method

.method public final varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 9
    .line 10
    check-cast v4, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 23
    .line 24
    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 27
    .line 28
    check-cast p1, Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const-string p1, "Closing HAL tuner session"

    .line 41
    .line 42
    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 45
    .line 46
    invoke-virtual {v3, p1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :try_start_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/os/HwParcel;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "android.hardware.broadcastradio@2.0::ITunerSession"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/os/HwParcel;

    .line 65
    .line 66
    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    :try_start_2
    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 70
    .line 71
    const/16 v4, 0xb

    .line 72
    .line 73
    invoke-interface {p1, v4, v2, v3, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_3
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 88
    .line 89
    .line 90
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    const-string v1, "BcRadio2Srv.module"

    .line 93
    .line 94
    const-string/jumbo v2, "mHalTunerSession.close() failed: "

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :goto_1
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    throw p0
.end method
