.class public final Lcom/android/server/sepunion/SemUnionMainService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const-string v0, "SemUnionMainService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onBootPhase = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-interface {v2, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onBootPhase(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/16 v1, 0x3e8

    .line 66
    .line 67
    if-ne p1, v1, :cond_2

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    .line 75
    .line 76
    :cond_2
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "SemUnionMainService"

    .line 2
    .line 3
    const-string/jumbo v1, "onStart"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "sepunion"

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 15
    .line 16
    .line 17
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "SemUnionMainServiceImpl"

    .line 11
    .line 12
    const-string/jumbo v0, "onUserStarting"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStarting(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "SemUnionMainServiceImpl"

    .line 11
    .line 12
    const-string/jumbo v0, "onUserStopped"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStopped(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "SemUnionMainServiceImpl"

    .line 11
    .line 12
    const-string/jumbo v0, "onUserStopping"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStopping(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p0, "SemUnionMainServiceImpl"

    .line 15
    .line 16
    const-string/jumbo v0, "onUserSwitching"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 60
    .line 61
    invoke-interface {v1, p1, p2}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserSwitching(II)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "SemUnionMainServiceImpl"

    .line 11
    .line 12
    const-string/jumbo v0, "onUserUnlocked"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserUnlocked(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "SemUnionMainServiceImpl"

    .line 11
    .line 12
    const-string/jumbo v0, "onUserUnlocking"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserUnlocking(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method
