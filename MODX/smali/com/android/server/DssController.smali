.class public Lcom/android/server/DssController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final TAG:Ljava/lang/String; = "DssController"

.field private static sDssController:Lcom/android/server/DssController;


# instance fields
.field private final DEFAULT_CPU_LEVEL:I

.field private final DEFAULT_GAME_SIOP_LEVEL:I

.field private final DEFAULT_GPU_LEVEL:I

.field private final DEFAULT_SCALE:F

.field private final FLOAT_EPSILON:F

.field private final mAllowList:Ljava/util/HashMap;

.field private mGameManager:Landroid/app/GameManagerInternal;

.field private final mRunningPackages:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_GAME_SIOP_LEVEL:I

    .line 7
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_CPU_LEVEL:I

    .line 9
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_GPU_LEVEL:I

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_SCALE:F

    .line 15
    const v0, 0x3a83126f    # 0.001f

    .line 18
    iput v0, p0, Lcom/android/server/DssController;->FLOAT_EPSILON:F

    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/DssController;->mGameManager:Landroid/app/GameManagerInternal;

    .line 37
    return-void
.end method

.method public static getService()Lcom/android/server/DssController;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/DssController;

    .line 7
    invoke-direct {v0}, Lcom/android/server/DssController;-><init>()V

    .line 10
    sput-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    .line 14
    return-object v0
.end method

.method private pidToPkg(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 32
    throw v0
.end method


# virtual methods
.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .locals 5

    const-string v0, "Google Screen Compat "

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v1, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v1}, Lcom/android/server/DssController$DssAppDate;-><init>()V

    .line 2
    iput p2, v1, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    .line 4
    iput v2, v1, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    .line 5
    iput v2, v1, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    .line 6
    iget-object v2, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DssController;->mGameManager:Landroid/app/GameManagerInternal;

    if-nez v3, :cond_0

    .line 9
    const-class v3, Landroid/app/GameManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameManagerInternal;

    iput-object v3, p0, Lcom/android/server/DssController;->mGameManager:Landroid/app/GameManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 10
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/DssController;->mGameManager:Landroid/app/GameManagerInternal;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, p1, p2}, Landroid/app/GameManagerInternal;->updateResolutionScalingFactorInternal(Ljava/lang/String;F)V

    .line 12
    const-string v3, "DssController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    const-string/jumbo p2, "on with Factor "

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "off"

    :goto_1
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for package: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_2
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 15
    :goto_2
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FI)V
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0}, Lcom/android/server/DssController$DssAppDate;-><init>()V

    .line 18
    iput p2, v0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    .line 19
    iput p3, v0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    .line 20
    iget-object p2, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0}, Lcom/android/server/DssController$DssAppDate;-><init>()V

    .line 23
    iput p2, v0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    .line 24
    const-string p2, ","

    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 25
    aget-object p3, p2, p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, v0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    const/4 p3, 0x1

    .line 26
    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    .line 27
    iget-object p2, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createScaledConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    .line 10
    move-result p0

    .line 11
    new-instance p2, Landroid/content/res/Configuration;

    .line 13
    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 16
    invoke-static {p2, p0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .line 19
    move-object p1, p2

    .line 20
    :cond_0
    return-object p1
.end method

.method public declared-synchronized getAllowList()Ljava/lang/StringBuilder;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v3

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/android/server/DssController$DssAppDate;

    .line 45
    iget v5, v5, Lcom/android/server/DssController$DssAppDate;->mScale:F

    .line 47
    const/high16 v6, 0x3f000000    # 0.5f

    .line 49
    sub-float/2addr v5, v6

    .line 50
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 53
    move-result v5

    .line 54
    const v6, 0x3a83126f    # 0.001f

    .line 57
    cmpg-float v5, v5, v6

    .line 59
    if-gez v5, :cond_1

    .line 61
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/android/server/DssController$DssAppDate;

    .line 79
    iget v5, v5, Lcom/android/server/DssController$DssAppDate;->mScale:F

    .line 81
    const/high16 v7, 0x3f400000    # 0.75f

    .line 83
    sub-float/2addr v5, v7

    .line 84
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 87
    move-result v5

    .line 88
    cmpg-float v5, v5, v6

    .line 90
    if-gez v5, :cond_0

    .line 92
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const-string v3, "DSS 0.5 Group\n"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "=============\n"

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v1

    .line 116
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "\n"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    const-string v1, "\n"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "DSS 0.75 Group\n"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "=============\n"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v1

    .line 156
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v2, "\n"

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    goto :goto_2

    .line 177
    :cond_4
    const-string v1, "\n"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    .line 183
    return-object v0

    .line 184
    :goto_3
    monitor-exit p0

    .line 185
    throw v0
.end method

.method public declared-synchronized getDssForPackage(Ljava/lang/String;)F
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/DssController$DssAppDate;

    .line 20
    iget p1, p1, Lcom/android/server/DssController$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    return p1

    .line 29
    :goto_1
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public declared-synchronized getGameSiopLevel(Ljava/lang/String;)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/DssController$DssAppDate;

    .line 18
    iget p1, p1, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public declared-synchronized getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/DssController$DssAppDate;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget v1, p1, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ","

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget p1, p1, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    return-object p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    const-string p1, "0,0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    return-object p1

    .line 50
    :goto_0
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public declared-synchronized getScalingFactor(I)F
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .locals 0

    monitor-enter p0

    .line 2
    monitor-exit p0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public declared-synchronized isScaledApp(I)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isScaledApp(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;IZ)F
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/high16 p0, 0x3f800000    # 1.0f

    .line 5
    return p0
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    .line 10
    move-result p0

    .line 11
    invoke-static {p1, p0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    .line 14
    :cond_0
    return-void
.end method

.method public scaleExistingMergedConfiguration(Landroid/util/MergedConfiguration;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object p2

    .line 15
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 17
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 23
    new-instance v1, Landroid/content/res/Configuration;

    .line 25
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 32
    const/high16 v2, 0x3f000000    # 0.5f

    .line 34
    if-eqz v0, :cond_0

    .line 36
    int-to-float p2, v0

    .line 37
    mul-float/2addr p2, p0

    .line 38
    add-float/2addr p2, v2

    .line 39
    float-to-int p2, p2

    .line 40
    iput p2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 45
    int-to-float p2, p2

    .line 46
    mul-float/2addr p2, p0

    .line 47
    add-float/2addr p2, v2

    .line 48
    float-to-int p2, p2

    .line 49
    iput p2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 54
    move-result-object p2

    .line 55
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 57
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 63
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 65
    new-instance v3, Lcom/android/server/DssController$PairConfiguration;

    .line 67
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 74
    move-result-object v5

    .line 75
    new-instance v6, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;

    .line 77
    const/4 v7, 0x0

    .line 78
    invoke-direct {v6, v2, v7}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;-><init>(Landroid/app/WindowConfiguration;I)V

    .line 81
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 84
    new-instance v4, Lcom/android/server/DssController$PairConfiguration;

    .line 86
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 93
    move-result-object v6

    .line 94
    new-instance v7, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;

    .line 96
    const/4 v8, 0x1

    .line 97
    invoke-direct {v7, v2, v8}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;-><init>(Landroid/app/WindowConfiguration;I)V

    .line 100
    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 103
    new-instance v5, Lcom/android/server/DssController$PairConfiguration;

    .line 105
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 112
    move-result-object v0

    .line 113
    new-instance v6, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;

    .line 115
    const/4 v7, 0x2

    .line 116
    invoke-direct {v6, v2, v7}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;-><init>(Landroid/app/WindowConfiguration;I)V

    .line 119
    invoke-direct {v5, p2, v0, v6}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    .line 124
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;

    .line 138
    invoke-direct {v0, p0}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;-><init>(F)V

    .line 141
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 144
    invoke-virtual {p1, v1}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 147
    :cond_2
    return-void
.end method

.method public declared-synchronized setDssForPackage(Ljava/lang/String;F)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    sub-float v0, p2, v0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result v0

    .line 10
    const v1, 0x3a83126f    # 0.001f

    .line 13
    cmpg-float v0, v0, v1

    .line 15
    if-gez v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->removePackage(Ljava/lang/String;)V

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DssController;->addPackageData(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public declared-synchronized setUsesOwnResolution(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    const-string p2, "Trying to setUsesOwnResolution("

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p1, "DssController"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string p2, ") for a package that isn\'t running!"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    monitor-exit p0

    .line 54
    throw p1
.end method

.method public declared-synchronized showAllDSSInfo()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    const-string v2, "DssController"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v4, "DSS PackageName : "

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, ", GameSiopLevel :"

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    .line 56
    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v4, ", CpuLevel :"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    .line 72
    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, ", GpuLevel :"

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/android/server/DssController$DssAppDate;

    .line 88
    iget v4, v4, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_0

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    monitor-exit p0

    .line 133
    return-void

    .line 134
    :goto_1
    monitor-exit p0

    .line 135
    throw v0
.end method

.method public declared-synchronized usesOwnResolution(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method
