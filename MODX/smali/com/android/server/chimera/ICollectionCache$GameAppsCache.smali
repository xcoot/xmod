.class public final Lcom/android/server/chimera/ICollectionCache$GameAppsCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final gameApps:Ljava/util/Set;

.field public gms:Lcom/samsung/android/game/IGameManagerService;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final notGameApps:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    .line 18
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    .line 28
    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 30
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    .line 15
    check-cast v0, Landroid/util/ArraySet;

    .line 17
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    return v2

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    .line 27
    if-nez v0, :cond_2

    .line 29
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    .line 39
    if-nez v0, :cond_2

    .line 41
    :goto_0
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    .line 45
    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    .line 48
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-ne v0, v1, :cond_3

    .line 51
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    .line 53
    check-cast p0, Landroid/util/ArraySet;

    .line 55
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    .line 61
    check-cast p0, Landroid/util/ArraySet;

    .line 63
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "GameManagerService RemoteException! "

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    const-string p0, "ChimeraDataCache"

    .line 93
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_0

    .line 97
    :goto_1
    return v1
.end method
