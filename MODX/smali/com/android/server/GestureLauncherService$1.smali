.class public final Lcom/android/server/GestureLauncherService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 15
    const-string v0, "android.intent.extra.user_handle"

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result p2

    .line 22
    iput p2, p1, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 24
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 26
    iget-object p1, p1, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 34
    iget-object p2, p2, Lcom/android/server/GestureLauncherService;->mSettingObserver:Lcom/android/server/GestureLauncherService$2;

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 44
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 46
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 49
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 54
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 56
    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    .line 64
    :cond_0
    return-void
.end method
