.class public final Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;
.implements Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# static fields
.field public static final sDeviceCacheLock:Ljava/lang/Object;

.field public static sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

.field public static final sRoutingListenerLock:Ljava/lang/Object;

.field public static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

.field public static sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

.field public static final sVolRangeInitReqListenerLock:Ljava/lang/Object;


# instance fields
.field public mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public mDevicesForAttributesCacheClearTimeMs:J

.field public final mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

.field public final mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

.field public mMethodCacheHit:[I

.field public final mRegisteredAttributesMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 26
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    .line 31
    return-void
.end method

.method public static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    .line 10
    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 15
    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    .line 18
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 20
    invoke-static {v1}, Landroid/media/AudioSystem;->setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V

    .line 23
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 25
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 28
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 33
    move-result v4

    .line 34
    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 37
    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 41
    const/4 v3, 0x1

    .line 42
    new-array v3, v3, [I

    .line 44
    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    .line 46
    monitor-exit v1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v2

    .line 49
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    throw v2

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :goto_1
    monitor-exit v0

    .line 58
    throw v1
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, " last cache clear time: "

    .line 3
    const-string v1, "\nAudioSystemAdapter:"

    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const-string v1, "MM-dd HH:mm:ss:SSS"

    .line 10
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2

    .line 31
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-wide v4, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 38
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v0, " mDevicesForAttrCache:"

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p0

    .line 73
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/util/Pair;

    .line 91
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 93
    check-cast v1, Landroid/media/AudioAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    .line 98
    move-result v3

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v5, "\t"

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v5, " forVolume: "

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Landroid/util/Pair;

    .line 123
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    const-string v5, " stream: "

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 135
    aget-object v5, v5, v3

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v5, "("

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v3, ")"

    .line 150
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v0

    .line 170
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_0

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object v3

    .line 180
    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v5, "\t\t"

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    goto :goto_1

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    const-string v4, "\t dump failed for attributes: "

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v1, "AudioSystemAdapter"

    .line 228
    const-string/jumbo v3, "dump failed"

    .line 231
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    goto/16 :goto_0

    .line 236
    :cond_1
    monitor-exit v2

    .line 237
    return-void

    .line 238
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    throw p0
.end method

.method public final getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    if-nez v2, :cond_0

    .line 23
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 26
    move-result-object v2

    .line 27
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    monitor-exit v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    .line 38
    const/4 p1, 0x0

    .line 39
    aget p2, p0, p1

    .line 41
    add-int/lit8 p2, p2, 0x1

    .line 43
    aput p2, p0, p1

    .line 45
    monitor-exit v1

    .line 46
    :goto_0
    return-object v2

    .line 47
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final invalidateRoutingCache()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    iput-wide v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 14
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 21
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
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

.method public final onRoutingUpdated()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 4
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1}, Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;->onRoutingUpdatedFromNative()V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    .line 20
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_8

    .line 27
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    .line 29
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/media/IDevicesForAttributesCallback;

    .line 35
    iget-object v4, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 37
    invoke-interface {v3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/util/List;

    .line 47
    if-eqz v4, :cond_7

    .line 49
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v4

    .line 53
    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_6

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/util/Pair;

    .line 65
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 67
    check-cast v6, Landroid/media/AudioAttributes;

    .line 69
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 71
    check-cast v7, Ljava/lang/Boolean;

    .line 73
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    move-result v7

    .line 77
    invoke-virtual {p0, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 80
    move-result-object v6

    .line 81
    iget-object v7, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_5

    .line 89
    iget-object v7, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Ljava/util/List;

    .line 97
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v8

    .line 101
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_3

    .line 107
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroid/media/AudioDeviceAttributes;

    .line 113
    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_2

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v7

    .line 124
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_1

    .line 130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Landroid/media/AudioDeviceAttributes;

    .line 136
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 139
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-nez v8, :cond_4

    .line 142
    goto :goto_2

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    :goto_2
    :try_start_2
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 147
    check-cast v7, Landroid/media/AudioAttributes;

    .line 149
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 151
    check-cast v5, Ljava/lang/Boolean;

    .line 153
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    move-result v5

    .line 157
    invoke-interface {v3, v7, v5, v6}, Landroid/media/IDevicesForAttributesCallback;->onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    goto :goto_1

    .line 161
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 167
    const-string v0, "Attribute list must not be null"

    .line 169
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p0

    .line 173
    :cond_8
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    .line 175
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 180
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    throw p0

    .line 182
    :catchall_1
    move-exception p0

    .line 183
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    throw p0
.end method

.method public final onVolumeRangeInitializationRequested()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;->onVolumeRangeInitRequestFromNative()V

    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public final setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 4
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final setForceUse(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 4
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7
    return-void
.end method

.method public final setParameters(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 4
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7
    return-void
.end method
