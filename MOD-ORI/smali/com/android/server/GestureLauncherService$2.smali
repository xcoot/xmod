.class public final Lcom/android/server/GestureLauncherService$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    .line 2
    .line 3
    iget p2, p1, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 4
    .line 5
    if-ne p3, p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
