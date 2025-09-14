.class public final Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayId:I

.field public final mHostInputToken:Landroid/os/IBinder;

.field public final mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field public final mOnAutofillCallback:Ljava/lang/Runnable;

.field public final mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

.field public final mOnInflateCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

.field public final mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final mSessionId:I

.field public final mStartIntentSenderFromClientApp:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 9
    .line 10
    iget-object p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    .line 17
    .line 18
    iget-object p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostDisplayId()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    .line 25
    .line 26
    iget p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mUserId:I

    .line 27
    .line 28
    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    .line 29
    .line 30
    iget p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mSessionId:I

    .line 31
    .line 32
    iput p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    .line 35
    .line 36
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-direct {p1, p4, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-direct {p1, p4, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnInflateCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {p1, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    return-void
.end method
