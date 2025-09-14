.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 16
    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 23
    .line 24
    xor-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 30
    .line 31
    xor-int/lit8 p0, p0, 0x1

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 37
    .line 38
    xor-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    return p0

    .line 41
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/Task;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    move v0, p0

    .line 72
    :cond_0
    return v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
