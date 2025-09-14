.class public final synthetic Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/Letterbox;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    check-cast p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInLetterboxAnimation()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 45
    .line 46
    :goto_0
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
