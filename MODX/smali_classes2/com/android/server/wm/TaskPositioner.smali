.class public final Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sFactory:Lcom/android/server/wm/TaskPositioner$1;


# instance fields
.field public mClientCallback:Landroid/os/IBinder;

.field public mClientChannel:Landroid/view/InputChannel;

.field public mCtrlType:I

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragEnded:Z

.field public mDragWindowHandle:Landroid/view/InputWindowHandle;

.field public mInputEventReceiver:Landroid/view/InputEventReceiver;

.field public final mMaxVisibleSize:Landroid/graphics/Point;

.field public mMinVisibleHeight:I

.field public mMinVisibleWidth:I

.field public mPreserveOrientation:Z

.field public mResizing:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mStartDragX:F

.field public mStartDragY:F

.field public mStartOrientationWasLandscape:Z

.field mTask:Lcom/android/server/wm/Task;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mWindowDragBounds:Landroid/graphics/Rect;

.field public final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Point;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning$1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getWindowDragBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object p0
.end method

.method public notifyMoveLocked(FF)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setDragResizing(Z)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 40
    .line 41
    .line 42
    float-to-int p1, p1

    .line 43
    float-to-int p2, p2

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 85
    .line 86
    int-to-float p1, p1

    .line 87
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 88
    .line 89
    sub-float/2addr p1, v2

    .line 90
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    int-to-float p2, p2

    .line 95
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 96
    .line 97
    sub-float/2addr p2, v2

    .line 98
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 112
    .line 113
    sub-int/2addr v2, v3

    .line 114
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    add-int/2addr v4, v3

    .line 117
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    sub-int/2addr v4, v3

    .line 124
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 127
    .line 128
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 129
    .line 130
    sub-int/2addr v0, v5

    .line 131
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 134
    .line 135
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    add-int/2addr v6, p1

    .line 138
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 147
    .line 148
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    add-int/2addr p0, p2

    .line 151
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {v5, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 160
    .line 161
    .line 162
    return v1
.end method

.method public resizeDrag(FF)V
    .locals 11

    .line 1
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 2
    .line 3
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 8
    .line 9
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 10
    .line 11
    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 12
    .line 13
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 14
    .line 15
    iget-boolean v9, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 16
    .line 17
    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 18
    .line 19
    move v0, p1

    .line 20
    move v1, p2

    .line 21
    invoke-static/range {v0 .. v10}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final startDrag(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 45
    .line 46
    new-instance p2, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;

    .line 47
    .line 48
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
