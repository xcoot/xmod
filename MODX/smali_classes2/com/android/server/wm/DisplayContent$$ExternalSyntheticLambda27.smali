.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(ILcom/android/server/wm/ActivityRecord;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
