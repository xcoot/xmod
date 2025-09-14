.class public final Lcom/android/server/devicepolicy/DeviceStateCacheImpl;
.super Landroid/app/admin/DeviceStateCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAffiliationWithDevice:Ljava/util/Map;

.field public final mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHasProfileOwner:Ljava/util/Map;

.field public mIsDeviceProvisioned:Z

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/admin/DeviceStateCache;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mHasProfileOwner:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mAffiliationWithDevice:Ljava/util/Map;

    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Device state cache:"

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "Device provisioned: "

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    .line 18
    const-string v2, "Device Owner Type: "

    .line 20
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 40
    const-string v0, "Has PO:"

    .line 42
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mHasProfileOwner:Ljava/util/Map;

    .line 47
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/Integer;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    const-string v3, "User "

    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, ": "

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mHasProfileOwner:Ljava/util/Map;

    .line 86
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 106
    return-void
.end method

.method public final hasAffiliationWithDevice(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mAffiliationWithDevice:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final isDeviceProvisioned()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mIsDeviceProvisioned:Z

    .line 3
    return p0
.end method

.method public final isUserOrganizationManaged(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mHasProfileOwner:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mDeviceOwnerType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final setHasAffiliationWithDevice(ILjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mAffiliationWithDevice:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mAffiliationWithDevice:Ljava/util/Map;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    return-void
.end method

.method public final setHasProfileOwner(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mHasProfileOwner:Ljava/util/Map;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->mHasProfileOwner:Ljava/util/Map;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_0
    return-void
.end method
