.class public final synthetic Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
