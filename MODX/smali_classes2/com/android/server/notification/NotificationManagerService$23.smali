.class public final Lcom/android/server/notification/NotificationManagerService$23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$23;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$23;->val$r:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$23;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$23;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$23;->val$r:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string v0, "GroupHelper"

    .line 32
    .line 33
    const-string v1, "Error processing canceled notification"

    .line 34
    .line 35
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$23;->this$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$23;->val$r:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_1
    move-exception p0

    .line 64
    const-string v0, "GroupHelper"

    .line 65
    .line 66
    const-string v1, "Error processing canceled notification"

    .line 67
    .line 68
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
