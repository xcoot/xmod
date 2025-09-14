.class public final Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;
.super Landroid/service/autofill/ISurfacePackageResultCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/autofill/ISurfacePackageResultCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
