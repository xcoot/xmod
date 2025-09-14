.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 3
    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 7
    sget-object v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    .line 9
    aget p0, v1, p0

    .line 11
    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 14
    return-void
.end method
