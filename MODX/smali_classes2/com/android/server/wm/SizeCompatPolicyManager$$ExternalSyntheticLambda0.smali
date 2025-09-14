.class public final synthetic Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SizeCompatPolicyManager;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SizeCompatPolicyManager;Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Configuration;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatPolicyManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Configuration;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iput v0, p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v1, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    sget-object v5, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 70
    .line 71
    iget v5, v5, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget v5, p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    .line 75
    .line 76
    :goto_0
    const/4 v6, 0x1

    .line 77
    invoke-virtual {p1, p0, v4, v5, v6}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    invoke-static {p0, p1}, Lcom/samsung/android/core/CompatUtils;->adjustBoundsToCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-interface {v1, v3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object p0, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 100
    .line 101
    const/4 p1, 0x5

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_2
    return-void
.end method
