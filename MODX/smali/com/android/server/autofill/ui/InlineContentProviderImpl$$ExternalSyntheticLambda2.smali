.class public final synthetic Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/view/inline/IInlineContentCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 6
    iput p2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 3
    iget v1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget v2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 9
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 11
    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v3, "InlineContentProviderImpl"

    .line 18
    const-string/jumbo v4, "handleProvideContent"

    .line 21
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget-boolean v3, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 26
    if-eqz v3, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v3, 0x1

    .line 30
    iput-boolean v3, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 32
    iget-object v3, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 34
    if-eqz v3, :cond_2

    .line 36
    iget v4, v3, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    .line 38
    if-ne v4, v1, :cond_2

    .line 40
    iget v3, v3, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    .line 42
    if-ne v3, v2, :cond_2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance v3, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 47
    iget-object v4, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 49
    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-direct {v3, v4, v1, v2, v5}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;IILandroid/os/Handler;)V

    .line 54
    iput-object v3, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 56
    :goto_0
    iget-object v1, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-direct {v2, v3, v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-object p0, v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 69
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    iget-object p0, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V

    .line 83
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :goto_1
    return-void
.end method
