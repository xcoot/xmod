.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/InsetsSource;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsSource;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$0:Landroid/view/InsetsSource;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;->f$0:Landroid/view/InsetsSource;

    .line 4
    .line 5
    check-cast p1, Landroid/view/InsetsState;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/view/InsetsSource;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {p1, p0}, Landroid/view/InsetsState;->removeSource(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
