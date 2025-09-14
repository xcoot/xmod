.class Lcom/android/server/wm/Task$DecorSurfaceContainer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mContainerSurface:Landroid/view/SurfaceControl;

.field final mDecorSurface:Landroid/view/SurfaceControl;

.field public mIsBoosted:Z

.field public mIsBoostedRequested:Z

.field mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mPendingClientTransactions:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public static -$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " - decor surface container"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v0, "Task.DecorSurfaceContainer"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " - decor surface"

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    xor-int/lit8 p2, p3, 0x1

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 119
    .line 120
    return-void
.end method
