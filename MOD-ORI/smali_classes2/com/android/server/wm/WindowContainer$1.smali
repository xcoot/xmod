.class public final Lcom/android/server/wm/WindowContainer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# instance fields
.field public final synthetic val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

.field public final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field public final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$1;->val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$1;->val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, -0x1

    .line 22
    if-eq v4, v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 36
    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 37
    .line 38
    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 39
    .line 40
    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 41
    .line 42
    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 43
    .line 44
    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 45
    .line 46
    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 47
    .line 48
    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowContainer;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    add-int/2addr v6, v4

    .line 81
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    add-int/2addr p1, v1

    .line 88
    invoke-virtual {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 92
    .line 93
    new-instance v1, Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 102
    .line 103
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
