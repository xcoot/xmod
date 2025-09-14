.class public final synthetic Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field public final synthetic f$1:Landroid/service/autofill/InlinePresentation;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$1:Landroid/service/autofill/InlinePresentation;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$4:Landroid/os/IBinder;

    .line 14
    iput p6, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$5:I

    .line 16
    iput p7, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$6:I

    .line 18
    iput p8, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$7:I

    .line 20
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 3
    iget-object v2, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$1:Landroid/service/autofill/InlinePresentation;

    .line 5
    iget v3, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    iget v4, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$3:I

    .line 9
    iget-object v5, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$4:Landroid/os/IBinder;

    .line 11
    iget v6, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$5:I

    .line 13
    iget v7, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$6:I

    .line 15
    iget v8, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$7:I

    .line 17
    move-object v0, p1

    .line 18
    check-cast v0, Landroid/service/autofill/IInlineSuggestionRenderService;

    .line 20
    invoke-interface/range {v0 .. v8}, Landroid/service/autofill/IInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 23
    return-void
.end method
