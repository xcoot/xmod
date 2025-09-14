.class public final Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChangedAuthorities:Landroid/util/ArraySet;

.field public mChangedUris:Landroid/util/ArraySet;

.field public final mExecuteRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

.field public final mJobStatus:Lcom/android/server/job/controllers/JobStatus;

.field public final mMyObservers:Ljava/util/ArrayList;

.field public final mTimeoutRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

.field public mTriggerPending:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    .line 13
    iput-object p2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 15
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    .line 20
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 22
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    .line 27
    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 29
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 31
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 37
    iget p2, p2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 39
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/util/ArrayMap;

    .line 45
    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/util/ArrayMap;

    .line 49
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    iget-object v2, p1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    :cond_0
    if-eqz v0, :cond_6

    .line 59
    array-length v2, v0

    .line 60
    const/4 v3, 0x0

    .line 61
    move v4, v3

    .line 62
    :goto_0
    if-ge v4, v2, :cond_6

    .line 64
    aget-object v5, v0, v4

    .line 66
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 72
    const/4 v7, 0x1

    .line 73
    const-string v8, " andDescendants="

    .line 75
    const-string v9, " for "

    .line 77
    const-string v10, "JobScheduler.ContentObserver"

    .line 79
    if-nez v6, :cond_3

    .line 81
    new-instance v6, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 83
    iget-object v11, p1, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-direct {v6, p1, v11, v5, p2}, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V

    .line 88
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    .line 94
    move-result v11

    .line 95
    and-int/2addr v11, v7

    .line 96
    if-eqz v11, :cond_1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    move v7, v3

    .line 100
    :goto_1
    sget-boolean v11, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 102
    if-eqz v11, :cond_2

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    .line 106
    const-string v12, "New observer "

    .line 108
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    const-string v8, " sourceUserId="

    .line 132
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {v11, p2, v10}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 138
    :cond_2
    iget-object v8, p1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v8, v5, v7, v6, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 151
    goto :goto_3

    .line 152
    :cond_3
    sget-boolean v11, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 154
    if-eqz v11, :cond_5

    .line 156
    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    .line 159
    move-result v11

    .line 160
    and-int/2addr v11, v7

    .line 161
    if-eqz v11, :cond_4

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move v7, v3

    .line 165
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 167
    const-string v12, "Reusing existing observer "

    .line 169
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 195
    invoke-static {v10, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_5
    :goto_3
    iget-object v5, v6, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 200
    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v5, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 210
    goto/16 :goto_0

    .line 212
    :cond_6
    return-void
.end method


# virtual methods
.method public final detachLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 18
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 25
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 31
    sget-boolean v3, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 33
    if-eqz v3, :cond_0

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    const-string v4, "Unregistering observer "

    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, " for "

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 52
    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    const-string v4, "JobScheduler.ContentObserver"

    .line 65
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 70
    iget-object v4, v3, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 79
    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 81
    iget v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 83
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/util/ArrayMap;

    .line 89
    if-eqz v3, :cond_1

    .line 91
    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 93
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method public final scheduleLocked()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 5
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 12
    iget-object v0, v2, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 16
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :cond_0
    iget-object v0, v2, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 25
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    .line 27
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 32
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 35
    move-result p0

    .line 36
    const/16 v0, 0x28

    .line 38
    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 40
    if-lt p0, v0, :cond_1

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    :goto_0
    return-void
.end method
