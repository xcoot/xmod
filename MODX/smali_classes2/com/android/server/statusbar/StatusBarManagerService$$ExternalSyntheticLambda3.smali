.class public final synthetic Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 6
    .line 7
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/high16 v2, 0x40000

    .line 22
    .line 23
    and-int/2addr p0, v2

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    iput-boolean p0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 45
    .line 46
    .line 47
    :cond_1
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
