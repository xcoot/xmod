.class public final Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 10
    return-void
.end method

.method public final getRemoteRequestMillis()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x7d0

    .line 3
    return-wide v0
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    return-wide v0
.end method

.method public final notifyInteraction(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p2, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 10
    return-void
.end method

.method public final provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;

    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;-><init>(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    return-void
.end method

.method public final suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 10
    return-void
.end method
