.class public final synthetic Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/companion/devicepresence/CompanionServiceConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->isPrimary()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 19
    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    iget-object v4, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v5, Landroid/util/Pair;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    check-cast v4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v6, Landroid/util/Pair;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-direct {v6, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    check-cast v5, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v4, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 65
    .line 66
    monitor-enter v4

    .line 67
    :try_start_1
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 68
    .line 69
    new-instance v3, Landroid/util/Pair;

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    check-cast v0, Ljava/util/HashSet;

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    monitor-exit v4

    .line 84
    goto :goto_2

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    throw p0

    .line 88
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0

    .line 90
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 91
    .line 92
    .line 93
    return-void
.end method
