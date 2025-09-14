.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;
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
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->f$0:I

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, p0, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    :cond_0
    return v0

    .line 22
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/Task;

    .line 23
    .line 24
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 25
    .line 26
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 27
    .line 28
    if-ne p1, p0, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_1
    return v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
