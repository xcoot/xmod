.class public final synthetic Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowToken;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowToken;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowToken;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowToken;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 11
    .line 12
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    new-instance p0, Landroid/view/InsetsState;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, v0, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 29
    .line 30
    .line 31
    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
