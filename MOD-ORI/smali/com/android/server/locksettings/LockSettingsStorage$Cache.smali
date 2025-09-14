.class public final Lcom/android/server/locksettings/LockSettingsStorage$Cache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final declared-synchronized contains(IILjava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 5
    .line 6
    iput p1, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 7
    .line 8
    iput-object p3, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final declared-synchronized purgePath(Ljava/io/File;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    :goto_0
    if-ltz v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 23
    .line 24
    iget v3, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 25
    .line 26
    if-ne v3, v1, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 48
    .line 49
    add-int/2addr p1, v1

    .line 50
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public final declared-synchronized put(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 3
    .line 4
    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 10
    .line 11
    iput-object p2, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public final declared-synchronized putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(IILjava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 9
    .line 10
    if-ne v0, p5, :cond_0

    .line 11
    .line 12
    iget-object p5, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput p1, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 20
    .line 21
    iput-object p2, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 22
    .line 23
    iput p4, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 24
    .line 25
    invoke-virtual {p5, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit p0

    .line 34
    throw p1
.end method
