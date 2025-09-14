.class public final Lcom/android/server/wm/DisplayContent$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# virtual methods
.method public final onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 6
    .line 7
    .line 8
    return-void
.end method
