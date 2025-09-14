.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsStateController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 20
    .line 21
    iput-boolean v1, v2, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v3, v1

    .line 42
    :goto_1
    if-ltz v3, :cond_2

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/server/wm/InsetsControlTarget;

    .line 51
    .line 52
    invoke-interface {v4, v2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sub-int/2addr v2, v1

    .line 79
    :goto_2
    if-ltz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/server/wm/InsetsControlTarget;

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, -0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkAndStartShowImePostLayout()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
