.class public abstract Lcom/android/server/wm/AppWarnings$BaseDialog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

.field public mDialog:Landroid/app/AlertDialog;

.field public final mManager:Lcom/android/server/wm/AppWarnings;

.field public final mPackageName:Ljava/lang/String;

.field public final mUiContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mManager:Lcom/android/server/wm/AppWarnings;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 24
    .line 25
    return-void
.end method

.method public final show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWarnings$BaseDialog$1;-><init>(Lcom/android/server/wm/AppWarnings$BaseDialog;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Landroid/content/IntentFilter;

    .line 20
    .line 21
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Showing "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " for package "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "AppWarnings"

    .line 56
    .line 57
    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 63
    .line 64
    .line 65
    return-void
.end method
