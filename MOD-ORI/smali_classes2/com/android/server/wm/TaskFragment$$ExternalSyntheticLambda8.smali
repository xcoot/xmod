.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;
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
    iput p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/TaskFragment;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 16
    .line 17
    if-ne v0, p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    iput-object p0, p1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    check-cast p0, [I

    .line 24
    .line 25
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    aget v0, p0, p1

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    aput v0, p0, p1

    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
