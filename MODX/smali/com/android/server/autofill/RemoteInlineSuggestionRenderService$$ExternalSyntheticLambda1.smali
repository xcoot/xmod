.class public final synthetic Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;->f$0:Landroid/os/RemoteCallback;

    .line 6
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;->f$0:Landroid/os/RemoteCallback;

    .line 3
    check-cast p1, Landroid/service/autofill/IInlineSuggestionRenderService;

    .line 5
    invoke-interface {p1, p0}, Landroid/service/autofill/IInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 8
    return-void
.end method
