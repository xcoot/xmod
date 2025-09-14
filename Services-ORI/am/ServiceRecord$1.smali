.class public final Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$appUid:I

.field public final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    .line 15
    .line 16
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$18;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    iput-boolean p0, v1, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    .line 27
    .line 28
    return-void
.end method
