.class public final Lcom/android/server/pm/SpegService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SpegService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SpegService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/SpegService$2;->this$0:Lcom/android/server/pm/SpegService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/SpegService$2;->this$0:Lcom/android/server/pm/SpegService;

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/android/server/pm/SpegService;->mBlockSpegInstallation:Z

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "SmartSwitch state changed: "

    .line 28
    .line 29
    invoke-static {p2, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
