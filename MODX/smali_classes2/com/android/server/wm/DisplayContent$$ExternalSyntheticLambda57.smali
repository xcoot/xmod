.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$1:Ljava/util/ArrayList;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    iget-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v3, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 45
    .line 46
    iput v2, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    .line 47
    .line 48
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput-boolean v2, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->focused:Z

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOldFocus:Lcom/android/server/wm/WindowState;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->lastFocused:Z

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$1:Ljava/util/ArrayList;

    .line 71
    .line 72
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 78
    .line 79
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 80
    .line 81
    const/high16 v1, 0x100000

    .line 82
    .line 83
    and-int/2addr v0, v1

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 104
    .line 105
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 106
    .line 107
    const/16 v1, 0x7d0

    .line 108
    .line 109
    if-lt v0, v1, :cond_2

    .line 110
    .line 111
    const/16 v1, 0xbb7

    .line 112
    .line 113
    if-gt v0, v1, :cond_2

    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
