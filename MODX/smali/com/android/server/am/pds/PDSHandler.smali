.class public final Lcom/android/server/am/pds/PDSHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;


# virtual methods
.method public final sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string/jumbo v1, "packageList"

    .line 9
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12
    const-string/jumbo p3, "policy-num"

    .line 15
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    const-string/jumbo p1, "userId"

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    iget-object p1, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 26
    const/16 p2, 0x8

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 35
    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    return-void
.end method

.method public final sendFirstTriggerMsgToMainHandler(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "policy-num"

    .line 9
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 30
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    return-void
.end method

.method public final sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string/jumbo v1, "packageList"

    .line 9
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12
    const-string/jumbo p4, "policy-num"

    .line 15
    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    const-string/jumbo p1, "trigger-reason"

    .line 21
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo p1, "userId"

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object p1, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 32
    const/4 p2, 0x7

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    return-void
.end method
