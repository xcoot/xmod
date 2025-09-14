.class public final synthetic Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 12
    .line 13
    if-ne v0, p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    .line 19
    const/16 v0, 0x7f6

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method
