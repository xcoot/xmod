.class public final synthetic Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AlertWindowNotification;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AlertWindowNotification;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
