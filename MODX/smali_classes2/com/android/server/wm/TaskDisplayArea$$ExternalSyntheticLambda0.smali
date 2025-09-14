.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, [I

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/Task;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    aget v0, p0, p1

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    aput v0, p0, p1

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, [Z

    .line 21
    .line 22
    check-cast p1, Lcom/android/server/wm/Task;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    aget-boolean v1, p0, v0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    or-int/2addr p1, v1

    .line 32
    aput-boolean p1, p0, v0

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/wm/Task;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
