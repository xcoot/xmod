.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;->f$0:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setHiddenWhileProfileLockedStateLocked(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
