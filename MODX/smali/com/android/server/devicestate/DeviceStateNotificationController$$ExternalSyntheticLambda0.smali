.class public final synthetic Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

.field public final synthetic f$1:Landroid/app/NotificationChannel;

.field public final synthetic f$2:Landroid/app/Notification$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    .line 8
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification$Builder;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    .line 5
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification$Builder;

    .line 7
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 12
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 14
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 17
    move-result-object p0

    .line 18
    const-string v1, "DeviceStateManager"

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 24
    return-void
.end method
