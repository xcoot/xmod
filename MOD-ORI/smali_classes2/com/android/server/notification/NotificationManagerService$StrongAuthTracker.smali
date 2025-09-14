.class public final Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserInLockDownMode:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized onStrongAuthRequiredChanged(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    and-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 37
    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_3
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit p0

    .line 49
    throw p1
.end method
