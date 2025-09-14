.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$1:[Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$1:[Z

    .line 5
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-boolean v1, p0, v2

    .line 17
    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 19
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 22
    :cond_0
    return-void
.end method
