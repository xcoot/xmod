.class public final Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 3
    const/16 v1, 0x277d

    .line 5
    const/16 v2, 0x277b

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 10
    if-eq p1, v2, :cond_0

    .line 12
    if-ne p1, v1, :cond_1

    .line 14
    :cond_0
    return v3

    .line 15
    :cond_1
    if-eq p1, v2, :cond_5

    .line 17
    if-eq p1, v1, :cond_2

    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 23
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 28
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 30
    check-cast p0, Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p0

    .line 40
    const-wide/16 v1, 0x0

    .line 42
    move v4, v3

    .line 43
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_4

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 55
    iget-boolean v6, v5, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 57
    if-eqz v6, :cond_3

    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 61
    iget-wide v5, v5, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 63
    add-long/2addr v1, v5

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const-wide/32 v5, 0xf4240

    .line 71
    div-long/2addr v1, v5

    .line 72
    invoke-static {p1, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    .line 75
    move-result-object p0

    .line 76
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_3

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 84
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 86
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    move-result v1

    .line 94
    move v2, v3

    .line 95
    :goto_2
    if-ge v2, v1, :cond_7

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 103
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 105
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 107
    iget-object v5, v5, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 109
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_6

    .line 115
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 117
    invoke-virtual {v5, v4}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v5

    .line 127
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    .line 130
    move-result-object v4

    .line 131
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    :goto_3
    return v3
.end method
