.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field public final synthetic f$1:Landroid/service/autofill/IInlineSuggestionUi;

.field public final synthetic f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$1:Landroid/service/autofill/IInlineSuggestionUi;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$1:Landroid/service/autofill/IInlineSuggestionUi;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;->f$4:I

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 12
    .line 13
    const-string v4, "RemoteInlineSuggestionUi"

    .line 14
    .line 15
    iput-object v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 19
    .line 20
    iput-boolean v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    .line 21
    .line 22
    iput v3, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    .line 23
    .line 24
    iput p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    .line 25
    .line 26
    iget-object p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    :try_start_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const-string p0, "Sending new UI content to IME"

    .line 35
    .line 36
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x1

    .line 40
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 44
    .line 45
    iget v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    .line 46
    .line 47
    iget v3, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    .line 48
    .line 49
    invoke-interface {p0, v2, v1, v3}, Lcom/android/internal/view/inline/IInlineContentCallback;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    const-string p0, "RemoteException calling onContent"

    .line 54
    .line 55
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnInflateCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;->run()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
