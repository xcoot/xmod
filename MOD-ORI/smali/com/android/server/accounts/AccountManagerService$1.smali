.class public final Lcom/android/server/accounts/AccountManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

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
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/accounts/AccountManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, "android.intent.extra.user_handle"

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    if-ge p1, p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p2, "User "

    .line 30
    .line 31
    const-string v0, " removed"

    .line 32
    .line 33
    const-string v1, "AccountManagerService"

    .line 34
    .line 35
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mpurgeUserData(Lcom/android/server/accounts/AccountManagerService;I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string p1, "android.intent.extra.REPLACING"

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/android/server/accounts/AccountManagerService$1$1;

    .line 62
    .line 63
    invoke-direct {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$1$1;-><init>(Lcom/android/server/accounts/AccountManagerService$1;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
