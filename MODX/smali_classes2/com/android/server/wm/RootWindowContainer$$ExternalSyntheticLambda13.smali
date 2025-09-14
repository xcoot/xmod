.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;
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
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;->f$0:I

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;->f$0:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 13
    .line 14
    if-ne v0, p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0

    .line 26
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 33
    .line 34
    if-ne p1, p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_1
    return p0

    .line 40
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 43
    .line 44
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 45
    .line 46
    if-ne p0, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 57
    .line 58
    const/16 p1, 0x7d5

    .line 59
    .line 60
    if-eq p0, p1, :cond_2

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 p0, 0x0

    .line 65
    :goto_2
    return p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
