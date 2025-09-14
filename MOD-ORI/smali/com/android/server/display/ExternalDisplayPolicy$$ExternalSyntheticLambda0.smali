.class public final synthetic Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/notifications/DisplayNotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "DisplayNotificationManager"

    .line 8
    .line 9
    const-string/jumbo v0, "onHighTemperatureExternalDisplayNotAllowed: mConnectedDisplayErrorHandlingEnabled is false"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x10403ea

    .line 17
    .line 18
    .line 19
    const v1, 0x10805f5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
