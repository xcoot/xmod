.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;
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
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/List;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Ljava/io/PrintWriter;

    .line 21
    .line 22
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    const-string v2, "  "

    .line 27
    .line 28
    invoke-virtual {p1, p0, v2, v1, v0}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
