.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    return p0
.end method
