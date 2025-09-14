.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/wm/Task;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$0:Ljava/lang/String;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$1:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
