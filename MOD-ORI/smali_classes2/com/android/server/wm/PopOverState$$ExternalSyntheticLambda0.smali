.class public final synthetic Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/graphics/Rect;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    return p0

    .line 42
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/PopOverState;

    .line 43
    .line 44
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, v0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 62
    .line 63
    if-ne p1, p0, :cond_1

    .line 64
    .line 65
    iget-boolean p0, v0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    .line 66
    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 p0, 0x0

    .line 72
    :goto_1
    return p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
