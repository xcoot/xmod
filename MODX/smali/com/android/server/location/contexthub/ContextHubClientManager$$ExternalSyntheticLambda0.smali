.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 3
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p0, p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 14
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    const/4 v0, 0x6

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, p0, v0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/PendingIntent$OnFinished;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit p1

    .line 31
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit p1

    .line 36
    throw p0
.end method
