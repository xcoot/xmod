.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/content/IntentSender;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;->accept(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 36
    .line 37
    const-string v2, "RemoteInlineSuggestionUi"

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const-string v1, "Sending refreshed SurfacePackage to IME"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 47
    .line 48
    iget-object v3, v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 49
    .line 50
    iget v4, v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    .line 51
    .line 52
    iget v1, v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    .line 53
    .line 54
    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/view/inline/IInlineContentCallback;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    const-string p0, "RemoteException calling onContent"

    .line 65
    .line 66
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 77
    .line 78
    iput-object p0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
