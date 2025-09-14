.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(I[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;->f$1:[Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;->f$1:[Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aput-boolean v2, p0, v3

    .line 20
    .line 21
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    .line 25
    const/16 v4, 0x7f8

    .line 26
    .line 27
    if-ne v1, v4, :cond_2

    .line 28
    .line 29
    aget-boolean p0, p0, v3

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget p0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v3

    .line 39
    :goto_0
    move v3, v2

    .line 40
    :cond_2
    return v3
.end method
