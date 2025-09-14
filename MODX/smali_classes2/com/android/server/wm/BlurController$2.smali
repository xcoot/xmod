.class public final Lcom/android/server/wm/BlurController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/BlurController$2;->val$powerManager:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/wm/BlurController$2;->val$powerManager:Landroid/os/PowerManager;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput-boolean p2, p1, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
