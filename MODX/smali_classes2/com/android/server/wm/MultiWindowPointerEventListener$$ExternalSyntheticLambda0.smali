.class public final synthetic Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, -0x1

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    :goto_0
    if-ltz v2, :cond_5

    .line 35
    .line 36
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v5, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iput-object v4, v0, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    .line 75
    .line 76
    :cond_3
    iget v3, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
