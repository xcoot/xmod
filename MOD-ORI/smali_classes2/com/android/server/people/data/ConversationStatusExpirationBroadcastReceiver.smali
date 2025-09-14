.class public final Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "ConversationStatusExpiration"

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    new-instance p0, Ljava/lang/Thread;

    .line 17
    .line 18
    new-instance p1, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
