.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$0:Landroid/util/ArraySet;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$0:Landroid/util/ArraySet;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
