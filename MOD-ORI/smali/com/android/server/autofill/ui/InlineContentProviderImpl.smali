.class public final Lcom/android/server/autofill/ui/InlineContentProviderImpl;
.super Lcom/android/internal/view/inline/IInlineContentProvider$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mProvideContentCalled:Z

.field public mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field public final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onSurfacePackageReleased()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final requestSurfacePackage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
