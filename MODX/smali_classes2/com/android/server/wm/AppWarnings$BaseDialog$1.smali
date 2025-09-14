.class public final Lcom/android/server/wm/AppWarnings$BaseDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings$BaseDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

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
    .locals 2

    .line 1
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

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
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mManager:Lcom/android/server/wm/AppWarnings;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    const/4 v0, 0x0

    .line 21
    iget v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
