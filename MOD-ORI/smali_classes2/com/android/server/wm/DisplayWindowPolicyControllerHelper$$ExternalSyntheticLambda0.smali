.class public final synthetic Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>([ZLandroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;->f$0:[Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArraySet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;->f$0:[Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArraySet;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aget-boolean v2, v0, v1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    or-int/2addr p0, v2

    .line 27
    aput-boolean p0, v0, v1

    .line 28
    .line 29
    :cond_0
    return-void
.end method
