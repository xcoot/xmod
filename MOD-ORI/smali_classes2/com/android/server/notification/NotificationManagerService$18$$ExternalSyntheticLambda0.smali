.class public final synthetic Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$18;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$18;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$18;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$18;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$3:I

    .line 13
    .line 14
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    const/16 v4, 0x40

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0, v2, p0, v4, v1}, Lcom/android/server/notification/NotificationManagerService$18;->removeFlagFromNotificationLocked(IIILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v3

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$18;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$2:I

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$3:I

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v3

    .line 42
    const v4, 0x8000

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v0, v2, p0, v4, v1}, Lcom/android/server/notification/NotificationManagerService$18;->removeFlagFromNotificationLocked(IIILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v3

    .line 49
    return-void

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    throw p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
