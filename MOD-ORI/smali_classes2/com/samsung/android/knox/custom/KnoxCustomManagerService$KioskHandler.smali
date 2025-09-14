.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    sget-object p1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->closeLauncherApp()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x2

    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 20
    .line 21
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/high16 v1, 0x20000000

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "state"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    new-instance v0, Landroid/os/UserHandle;

    .line 40
    .line 41
    const/4 v1, -0x2

    .line 42
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x3

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->initialiseSystemUi()V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method
