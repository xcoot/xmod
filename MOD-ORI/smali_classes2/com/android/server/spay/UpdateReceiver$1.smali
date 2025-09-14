.class public final Lcom/android/server/spay/UpdateReceiver$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;

.field public final synthetic val$action:Ljava/lang/String;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/UpdateReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$1;->this$0:Lcom/android/server/spay/UpdateReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$action:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "action"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$action:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "getdata_of_intent"

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$1;->this$0:Lcom/android/server/spay/UpdateReceiver;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mHandler:Lcom/android/server/spay/UpdateReceiver$2;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
