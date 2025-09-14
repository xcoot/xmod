.class public final synthetic Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 41
    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
