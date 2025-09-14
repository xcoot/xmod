.class public final Lcom/android/server/notification/NotificationShellCmd$ShellNls;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isConnected:Z


# virtual methods
.method public final onListenerConnected()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    .line 3
    .line 4
    return-void
.end method
