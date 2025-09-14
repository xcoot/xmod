.class public final Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final apps:Ljava/util/Set;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->init()Z

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->init()Z

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 5
    .line 6
    check-cast p0, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "BigGameAppsCache"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "CameraAppsCache"

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final init()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/android/server/chimera/SystemRepository;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v2, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v4, "SystemRepositoryDefault"

    .line 17
    .line 18
    invoke-static {v4}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v0, Lcom/android/server/chimera/SystemRepository;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v2

    .line 32
    :try_start_2
    const-string v4, "SystemRepositoryDefault"

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v4, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/chimera/SystemRepository;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    iput-object v2, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->getKey()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, ""

    .line 53
    .line 54
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    const-string v2, ","

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast p0, Landroid/util/ArraySet;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    return v1

    .line 82
    :cond_2
    return v3

    .line 83
    :goto_1
    monitor-exit v0

    .line 84
    throw p0

    .line 85
    :cond_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final update(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 13
    .line 14
    check-cast v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->init()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->getKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    .line 46
    .line 47
    const-string v1, ","

    .line 48
    .line 49
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
