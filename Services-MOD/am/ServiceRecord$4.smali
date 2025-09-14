.class public final Lcom/android/server/am/ServiceRecord$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;

.field public final synthetic val$localUserId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$4;->val$localPackageName:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/am/ServiceRecord$4;->val$localForegroundId:I

    .line 8
    iput p2, p0, Lcom/android/server/am/ServiceRecord$4;->val$localUserId:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

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
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$4;->val$localPackageName:Ljava/lang/String;

    .line 14
    iget v2, p0, Lcom/android/server/am/ServiceRecord$4;->val$localForegroundId:I

    .line 16
    iget p0, p0, Lcom/android/server/am/ServiceRecord$4;->val$localUserId:I

    .line 18
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$18;

    .line 20
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/notification/NotificationManagerService$18;->removeForegroundServiceFlagFromNotification(IILjava/lang/String;)V

    .line 23
    return-void
.end method
