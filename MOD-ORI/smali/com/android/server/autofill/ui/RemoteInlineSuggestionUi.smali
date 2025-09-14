.class public final Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActualHeight:I

.field public mActualWidth:I

.field public mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public final mHeight:I

.field public mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

.field public mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

.field public final mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field public mRefCount:I

.field public final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

.field public mWaitingForUiCreation:Z

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;IILandroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    .line 14
    .line 15
    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    .line 16
    .line 17
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final handleUpdateRefCount(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 14
    .line 15
    add-int/2addr v0, p1

    .line 16
    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-direct {p1, p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const-wide/16 v2, 0xc8

    .line 29
    .line 30
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
