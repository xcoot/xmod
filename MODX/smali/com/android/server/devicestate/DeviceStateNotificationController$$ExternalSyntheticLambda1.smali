.class public final synthetic Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateNotificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 5
    const-string v0, "DeviceStateManager"

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 11
    return-void
.end method
