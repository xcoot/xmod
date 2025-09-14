.class public final synthetic Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationHistoryJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationHistoryJobService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationHistoryJobService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    sget v1, Lcom/android/server/notification/NotificationHistoryJobService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 17
    .line 18
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$18;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v3, v1, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-ge v4, v3, :cond_2

    .line 43
    .line 44
    iget-object v5, v1, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    iget-object v5, v1, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 53
    .line 54
    iget-object v6, v1, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 65
    .line 66
    if-nez v5, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationHistoryDatabase;->prune()V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v1, v0, Lcom/android/server/notification/NotificationHistoryJobService;->mSignal:Landroid/os/CancellationSignal;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0
.end method
