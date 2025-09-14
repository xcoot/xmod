.class public final Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# virtual methods
.method public final authenticate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final autofill(Landroid/service/autofill/Dataset;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onError()V
    .locals 1

    .line 1
    const-string p0, "InlineSuggestionFactory"

    .line 3
    const-string v0, "An error happened on the tooltip"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final onInflate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    return-void
.end method
