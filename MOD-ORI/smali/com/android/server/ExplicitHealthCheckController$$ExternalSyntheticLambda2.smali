.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_4

    .line 43
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v1, v0, v3}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ExplicitHealthCheckController;I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {p0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-direct {v1, v0, v3}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ExplicitHealthCheckController;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1, v4}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    const-string p0, "ExplicitHealthCheckController"

    .line 117
    .line 118
    const-string p1, "No more health check requests, unbinding..."

    .line 119
    .line 120
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    .line 124
    .line 125
    .line 126
    monitor-exit v2

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    monitor-exit v2

    .line 129
    :goto_3
    return-void

    .line 130
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0
.end method
