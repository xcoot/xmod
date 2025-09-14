.class public final Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mJobs:Landroid/util/ArraySet;

.field public final mUri:Landroid/app/job/JobInfo$TriggerContentUri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 13
    iput-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 15
    iput p4, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 17
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "JobScheduler.ContentObserver"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "onChange(self="

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, ") for "

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " when mUri="

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, " mUserId="

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 43
    invoke-static {v1, p1, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 48
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 53
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_0
    if-ge v1, v0, :cond_4

    .line 60
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 62
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 68
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 70
    if-nez v3, :cond_1

    .line 72
    new-instance v3, Landroid/util/ArraySet;

    .line 74
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 77
    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 84
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 87
    move-result v3

    .line 88
    const/16 v4, 0x32

    .line 90
    if-ge v3, v4, :cond_2

    .line 92
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 94
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 99
    if-nez v3, :cond_3

    .line 101
    new-instance v3, Landroid/util/ArraySet;

    .line 103
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 106
    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 108
    :cond_3
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 110
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->scheduleLocked()V

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    monitor-exit p1

    .line 124
    return-void

    .line 125
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method
