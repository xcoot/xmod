.class public final Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$appPid:I

.field public final synthetic val$appUid:I

.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    .line 10
    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    .line 12
    iput p5, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    .line 14
    iget v4, p0, Lcom/android/server/am/ServiceRecord$3;->val$appUid:I

    .line 16
    iget v5, p0, Lcom/android/server/am/ServiceRecord$3;->val$appPid:I

    .line 18
    iget v7, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    .line 20
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 22
    iget v8, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 24
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$18;

    .line 26
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    move v9, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v1, 0x8440

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v2, v3

    .line 48
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "ActivityManager"

    .line 55
    const-string v2, "Error canceling notification for service"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 62
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 64
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 66
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 68
    iget p0, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method
