.class public final Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceConfigEntries:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    .line 10
    .line 11
    const-string/jumbo v0, "window_manager"

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mNamespace:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addDeviceConfigEntry(Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;-><init>(Ljava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    const-string p2, "Key already present: "

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method
