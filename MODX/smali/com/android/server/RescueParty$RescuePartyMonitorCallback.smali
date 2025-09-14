.class public final Lcom/android/server/RescueParty$RescuePartyMonitorCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$MonitorCallback;


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final onDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 6
    move-result-object p0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 10
    check-cast v0, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/Set;

    .line 18
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/util/ArraySet;

    .line 22
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 27
    check-cast v1, Ljava/util/HashMap;

    .line 29
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 40
    check-cast v0, Ljava/util/HashMap;

    .line 42
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Set;

    .line 48
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    .line 52
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 55
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 60
    check-cast p1, Ljava/util/HashMap;

    .line 62
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final onNamespaceUpdate(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    const-string v1, "RescueParty"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    const-string v4, "Starting to observe: "

    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, ", updated namespace: "

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 60
    move-result-object p0

    .line 61
    sget-wide v3, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 63
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 66
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0
.end method
