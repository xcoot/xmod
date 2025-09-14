.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_EVENT_SET:Ljava/util/Set;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExistingClientRequests:Ljava/util/Set;

.field public mIsServiceEnabled:Z

.field public mIsWearableServiceEnabled:Z


# direct methods
.method public static -$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length p0, p1

    .line 5
    new-array p0, p0, [Ljava/lang/Integer;

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    aget v4, p1, v2

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int/lit8 v5, v3, 0x1

    .line 20
    .line 21
    aput-object v4, p0, v3

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    move v3, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->isWearableEventTypesOnly(Ljava/util/Set;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    array-length p0, p1

    .line 44
    move v0, v1

    .line 45
    :goto_1
    if-ge v0, p0, :cond_3

    .line 46
    .line 47
    aget v2, p1, v0

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 54
    .line 55
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    const-string p0, "AmbientContextManagerService"

    .line 62
    .line 63
    const-string p1, "Received mixed event types, this is not supported."

    .line 64
    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_2
    return v1
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->DEFAULT_EVENT_SET:Ljava/util/Set;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x44

    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 19
    .line 20
    return-void
.end method

.method public static intArrayToIntegerSet([I)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static isWearableEventTypesOnly(Ljava/util/Set;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "AmbientContextManagerService"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "empty event types."

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const v3, 0x186a0

    .line 38
    .line 39
    .line 40
    if-ge v0, v3, :cond_1

    .line 41
    .line 42
    const-string p0, "Not all events types are wearable events."

    .line 43
    .line 44
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    const-string/jumbo p0, "only wearable events."

    .line 49
    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    return p0
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 6
    .line 7
    const-string v1, "AmbientContextManagerService"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final findExistingRequests(ILjava/lang/String;)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public final getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->isWearableEventTypesOnly(Ljava/util/Set;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForType(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForType(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 1
    const/16 p0, 0x7530

    .line 2
    .line 3
    return p0
.end method

.method public final getServiceForType(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
    .locals 4

    .line 1
    const-string v0, "Services that are available: "

    .line 2
    .line 3
    const-string v1, "AmbientContextManagerService"

    .line 4
    .line 5
    const-string/jumbo v2, "getServiceForType with userid: "

    .line 6
    .line 7
    .line 8
    const-string v3, " service type: "

    .line 9
    .line 10
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "AmbientContextManagerService"

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    const-string/jumbo v0, "null services"

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, " number of services"

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    if-nez p0, :cond_1

    .line 83
    .line 84
    monitor-exit v1

    .line 85
    return-object p1

    .line 86
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, p2, :cond_2

    .line 107
    .line 108
    monitor-exit v1

    .line 109
    return-object v0

    .line 110
    :cond_3
    monitor-exit v1

    .line 111
    return-object p1

    .line 112
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 3

    .line 1
    const-string v0, "AmbientContextManagerService"

    .line 2
    .line 3
    const-string v1, "New client added: "

    .line 4
    .line 5
    invoke-static {v1, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->findExistingRequests(ILjava/lang/String;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 23
    .line 24
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;-><init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final newServiceListLocked(I[Ljava/lang/String;)Ljava/util/List;
    .locals 11

    .line 1
    const-string v0, "AmbientContextManagerService"

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    array-length v1, p2

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    array-length v2, p2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    array-length v2, p2

    .line 17
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 18
    .line 19
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    const v6, 0x104033a

    .line 24
    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x0

    .line 28
    if-ne v2, v7, :cond_3

    .line 29
    .line 30
    aget-object v2, p2, v8

    .line 31
    .line 32
    iget-object v9, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    const v10, 0x1040307

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x1

    .line 55
    aget-object v9, p2, v2

    .line 56
    .line 57
    iget-object v10, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    if-eqz v10, :cond_2

    .line 68
    .line 69
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v3, "Not using default services, services provided for testing should be exactly two services."

    .line 77
    .line 78
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/android/server/ambientcontext/DefaultAmbientContextManagerPerUserService;

    .line 82
    .line 83
    aget-object v3, p2, v8

    .line 84
    .line 85
    invoke-direct {v0, p0, v5, p1, v3}, Lcom/android/server/ambientcontext/DefaultAmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;

    .line 92
    .line 93
    aget-object p2, p2, v2

    .line 94
    .line 95
    invoke-direct {v0, p0, v5, p1, p2}, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_3
    :goto_0
    array-length v2, p2

    .line 103
    if-le v2, v7, :cond_4

    .line 104
    .line 105
    const-string v2, "Incorrect number of services provided for testing."

    .line 106
    .line 107
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_4
    array-length v2, p2

    .line 111
    :goto_1
    if-ge v8, v2, :cond_7

    .line 112
    .line 113
    aget-object v7, p2, v8

    .line 114
    .line 115
    const-string/jumbo v9, "newServicesListLocked with service name: "

    .line 116
    .line 117
    .line 118
    invoke-static {v9, v7, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v9, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    if-eqz v9, :cond_5

    .line 132
    .line 133
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 138
    .line 139
    move-object v9, v3

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    move-object v9, v4

    .line 142
    :goto_2
    if-ne v9, v3, :cond_6

    .line 143
    .line 144
    new-instance v9, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;

    .line 145
    .line 146
    invoke-direct {v9, p0, v5, p1, v7}, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    new-instance v9, Lcom/android/server/ambientcontext/DefaultAmbientContextManagerPerUserService;

    .line 154
    .line 155
    invoke-direct {v9, p0, v5, p1, v7}, Lcom/android/server/ambientcontext/DefaultAmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    return-object v1

    .line 165
    :cond_8
    :goto_4
    const-string/jumbo p0, "serviceNames sent in newServiceListLocked is null, or empty"

    .line 166
    .line 167
    .line 168
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    new-instance p0, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    return-object p0
.end method

.method public final bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "ambient_context_manager_service"

    .line 19
    .line 20
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo p1, "service_enabled"

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    .line 32
    .line 33
    const-string/jumbo v1, "wearable_sensing"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsWearableServiceEnabled:Z

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final onServicePackageRestartedLocked(I)V
    .locals 2

    .line 1
    const-string v0, "AmbientContextManagerService"

    .line 2
    .line 3
    const-string v1, "Restoring remote request. Reason: Service package restarted."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->restorePreviouslyEnabledClients(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onServicePackageUpdatedLocked(I)V
    .locals 2

    .line 1
    const-string v0, "AmbientContextManagerService"

    .line 2
    .line 3
    const-string v1, "Restoring remote request. Reason: Service package updated."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->restorePreviouslyEnabledClients(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 2
    .line 3
    const-string p0, "AmbientContextManagerService"

    .line 4
    .line 5
    const-string/jumbo p2, "onServiceRemoved"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p0, "AmbientContextManagerPerUserService"

    .line 15
    .line 16
    const-string p2, "Trying to cancel the remote request. Reason: Service destroyed."

    .line 17
    .line 18
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->unbind()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->clearRemoteService()V

    .line 34
    .line 35
    .line 36
    monitor-exit p2

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "ambient_context"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "query service not available for user_id: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 7
    .line 8
    const-string v3, "AmbientContextManagerService"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-static {p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->intArrayToIntegerSet([I)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string p0, "AmbientContextManagerService"

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final restorePreviouslyEnabledClients(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 41
    .line 42
    iget v5, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    .line 43
    .line 44
    if-ne v5, p1, :cond_1

    .line 45
    .line 46
    const-string v5, "AmbientContextManagerService"

    .line 47
    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v7, "Restoring detection for "

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v7, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v5, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 71
    .line 72
    iget-object v6, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

    .line 75
    .line 76
    invoke-virtual {v2, v5, v6, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "service not available for user_id: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 7
    .line 8
    const-string v3, "AmbientContextManagerService"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string p0, "AmbientContextManagerService"

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
