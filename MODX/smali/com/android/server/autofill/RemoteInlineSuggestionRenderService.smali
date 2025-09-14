.class public final Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 4
    move-result-object v6

    .line 5
    if-eqz p5, :cond_0

    .line 7
    const/high16 v0, 0x400000

    .line 9
    :goto_0
    move v7, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    const/4 v9, 0x2

    .line 14
    const-string v2, "android.service.autofill.InlineSuggestionRenderService"

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v3, p2

    .line 19
    move v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move/from16 v8, p6

    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 26
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 29
    return-void
.end method


# virtual methods
.method public final destroySuggestionViews(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(II)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    return-void
.end method

.method public final getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    return-void
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;

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

.method public final handleOnConnectedStateChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->handleOnConnectedStateChanged(Z)V

    .line 4
    return-void
.end method

.method public final renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 10

    .line 1
    new-instance v9, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;

    .line 3
    move-object v0, v9

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move/from16 v6, p6

    .line 11
    move/from16 v7, p7

    .line 13
    move/from16 v8, p8

    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 18
    move-object v0, p0

    .line 19
    invoke-virtual {p0, v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 22
    return-void
.end method
