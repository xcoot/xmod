.class public final Lcom/android/server/NetworkScoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkScoreService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/NetworkScoreService$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/NetworkScoreService$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string p2, "android.location.MODE_CHANGED"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "android.intent.extra.user_handle"

    .line 30
    const/16 v1, -0x2710

    .line 32
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    move-result p2

    .line 36
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const-string v0, "Received "

    .line 42
    const-string v2, " for userId "

    .line 44
    const-string v3, "NetworkScoreService"

    .line 46
    invoke-static {p2, v0, p1, v2, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    if-ne p2, v1, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 60
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/server/NetworkScoreService;->onUserUnlocked(I)V

    .line 65
    :cond_3
    :goto_0
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
