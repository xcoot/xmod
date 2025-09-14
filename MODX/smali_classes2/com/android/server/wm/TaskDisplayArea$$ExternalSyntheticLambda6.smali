.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x2

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrientation(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :cond_1
    :goto_0
    return-object p2
.end method
