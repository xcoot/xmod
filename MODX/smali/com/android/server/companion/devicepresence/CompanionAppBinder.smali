.class public final Lcom/android/server/companion/devicepresence/CompanionAppBinder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBoundCompanionApplications:Ljava/util/Map;

.field public final mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

.field public final mContext:Landroid/content/Context;

.field public final mScheduledForRebindingCompanionApplications:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;-><init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;)V

    .line 11
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/HashSet;

    .line 22
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 27
    return-void
.end method


# virtual methods
.method public final getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 6
    new-instance v1, Landroid/util/Pair;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    check-cast p0, Ljava/util/HashMap;

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/util/List;

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final isCompanionApplicationBound(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 6
    new-instance v1, Landroid/util/Pair;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    check-cast p0, Ljava/util/HashMap;

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final unbindCompanionApp(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "CDM_CompanionAppBinder"

    .line 3
    const-string v1, "Unbinding user=["

    .line 5
    const-string v2, "], package=["

    .line 7
    const-string v3, "]..."

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 21
    new-instance v2, Landroid/util/Pair;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    check-cast v1, Ljava/util/HashMap;

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 41
    monitor-enter v2

    .line 42
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 44
    new-instance v0, Landroid/util/Pair;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    check-cast p0, Ljava/util/HashSet;

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-nez v1, :cond_0

    .line 61
    const-string p0, "CDM_CompanionAppBinder"

    .line 63
    const-string p1, "The package is not bound."

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p0

    .line 73
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->getJobHandler()Landroid/os/Handler;

    .line 88
    move-result-object p2

    .line 89
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda0;

    .line 91
    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    .line 94
    const-wide/16 v1, 0x1388

    .line 96
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p0

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    throw p0
.end method
