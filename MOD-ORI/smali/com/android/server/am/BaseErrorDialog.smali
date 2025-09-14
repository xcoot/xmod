.class public Lcom/android/server/am/BaseErrorDialog;
.super Landroid/app/AlertDialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConsuming:Z

.field public final mHandler:Lcom/android/server/am/BaseErrorDialog$2;

.field public mReceiver:Lcom/android/server/am/BaseErrorDialog$1;


# direct methods
.method public static -$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V
    .locals 1

    .line 1
    const v0, 0x1020019

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/Button;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const v0, 0x102001a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/Button;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const v0, 0x102001b

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/widget/Button;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x1030435

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$2;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$2;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Lcom/android/server/am/BaseErrorDialog$2;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x7d3

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/high16 v0, 0x20000

    .line 34
    .line 35
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "Error Dialog"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/app/AlertDialog;->mCancelable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Lcom/android/server/am/BaseErrorDialog$2;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Lcom/android/server/am/BaseErrorDialog$2;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Lcom/android/server/am/BaseErrorDialog$1;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Lcom/android/server/am/BaseErrorDialog$1;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Lcom/android/server/am/BaseErrorDialog$1;

    .line 38
    .line 39
    new-instance v1, Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Lcom/android/server/am/BaseErrorDialog$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Lcom/android/server/am/BaseErrorDialog$1;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "unregisterReceiver threw exception: "

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "BaseErrorDialog"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Lcom/android/server/am/BaseErrorDialog$1;

    .line 45
    .line 46
    :cond_0
    return-void
.end method
