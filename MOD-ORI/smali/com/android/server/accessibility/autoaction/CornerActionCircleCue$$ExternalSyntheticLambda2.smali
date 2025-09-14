.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
