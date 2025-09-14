.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;->f$0:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 13
    .line 14
    const/16 v1, 0x7d5

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 19
    .line 20
    if-ne v0, p0, :cond_0

    .line 21
    .line 22
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0

    .line 34
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 37
    .line 38
    if-ne v0, p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_1
    return p0

    .line 50
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 57
    .line 58
    if-ne p1, p0, :cond_2

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    :goto_2
    return p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
