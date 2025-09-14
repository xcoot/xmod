.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsStateController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 13
    .line 14
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
