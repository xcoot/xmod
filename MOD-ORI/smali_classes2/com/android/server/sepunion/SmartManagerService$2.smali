.class public final Lcom/android/server/sepunion/SmartManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$2;->this$0:Lcom/android/server/sepunion/SmartManagerService;

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_0
    const-string v0, "android.intent.extra.UID"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "android.intent.extra.REPLACING"

    .line 29
    .line 30
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v2, 0x32

    .line 48
    .line 49
    iput v2, v1, Landroid/os/Message;->what:I

    .line 50
    .line 51
    const-string v2, "action"

    .line 52
    .line 53
    const-string/jumbo v3, "uid"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string/jumbo v0, "pkg_name"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$2;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
