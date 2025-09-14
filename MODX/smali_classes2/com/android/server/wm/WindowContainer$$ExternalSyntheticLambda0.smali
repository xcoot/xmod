.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x3

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :pswitch_0
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 19
    .line 20
    if-nez p0, :cond_0

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
    :pswitch_1
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 27
    .line 28
    xor-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_2
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 32
    .line 33
    xor-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
