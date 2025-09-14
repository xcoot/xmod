.class public final Lcom/android/server/power/shutdown/WebpPlayer;
.super Lcom/android/server/power/shutdown/AnimationPlayer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public currentAnimationLoader:Lcom/android/server/power/shutdown/AnimationLoader;

.field public drawHandler:Landroid/os/Handler;

.field public mainAnimationLoaders:Ljava/util/List;

.field public mainAnimationWidthHeight:Landroid/util/Pair;

.field public singleExecutorService:Ljava/util/concurrent/ExecutorService;

.field public subAnimationLoaders:Ljava/util/List;


# direct methods
.method public static channingAnimationLoaders(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 21
    .line 22
    add-int/lit8 v2, v0, 0x1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-gt v3, v2, :cond_0

    .line 30
    .line 31
    move-object v3, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 38
    .line 39
    :goto_1
    iput-object v3, v1, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-gt v3, v0, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v4, v0

    .line 61
    check-cast v4, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 62
    .line 63
    :goto_2
    iput-object v4, v1, Lcom/android/server/power/shutdown/AnimationLoader;->pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 64
    .line 65
    :cond_2
    move v0, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->drawHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->drawHandler:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->drawHandler:Landroid/os/Handler;

    .line 17
    .line 18
    return-object p0
.end method

.method public final getMainAnimationWidthHeight()Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/io/File;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 84
    .line 85
    :goto_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 88
    .line 89
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "getMainAnimationWidthHeight unexpected flow %s"

    .line 94
    .line 95
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "Shutdown-WebpPlayer"

    .line 100
    .line 101
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationWidthHeight:Landroid/util/Pair;

    .line 105
    .line 106
    return-object p0
.end method

.method public final isPlaying()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/power/shutdown/AnimationType;->SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    .line 6
    .line 7
    sget-object v3, Lcom/android/server/power/shutdown/AnimationType;->MAIN_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 21
    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 39
    .line 40
    iget-object v6, v5, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    if-eq v6, v3, :cond_0

    .line 46
    .line 47
    if-ne v6, v2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v5, v5, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    if-ne v5, v1, :cond_0

    .line 56
    .line 57
    return v4

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    check-cast v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 71
    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 89
    .line 90
    iget-object v5, v0, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    if-eq v5, v3, :cond_3

    .line 96
    .line 97
    if-ne v5, v2, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, v0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    if-ne v0, v1, :cond_3

    .line 106
    .line 107
    return v4

    .line 108
    :cond_5
    const/4 p0, 0x0

    .line 109
    return p0
.end method

.method public final makeAnimationLoaders(Ljava/util/List;Ljava/io/File;Lcom/android/server/power/shutdown/AnimationType;)Ljava/util/List;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    add-int/2addr v1, v2

    .line 15
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v3, "makeAnimationLoaders, file count["

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, "]"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "Shutdown-WebpPlayer"

    .line 38
    .line 39
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance v7, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v9, v1

    .line 62
    check-cast v9, Ljava/io/File;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    const-wide/16 v11, 0x1388

    .line 68
    .line 69
    move-object v8, v1

    .line 70
    move-object/from16 v13, p3

    .line 71
    .line 72
    move-object v14, p0

    .line 73
    invoke-direct/range {v8 .. v14}, Lcom/android/server/power/shutdown/AnimationLoader;-><init>(Ljava/io/File;IJLcom/android/server/power/shutdown/AnimationType;Lcom/android/server/power/shutdown/WebpPlayer;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    if-eqz p2, :cond_3

    .line 81
    .line 82
    new-instance v8, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 83
    .line 84
    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->MAIN:Lcom/android/server/power/shutdown/AnimationType;

    .line 85
    .line 86
    move-object/from16 v1, p3

    .line 87
    .line 88
    if-ne v1, v0, :cond_2

    .line 89
    .line 90
    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->MAIN_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    .line 91
    .line 92
    :goto_2
    move-object v5, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_3
    const/4 v2, -0x1

    .line 98
    const-wide/16 v3, 0x0

    .line 99
    .line 100
    move-object v0, v8

    .line 101
    move-object/from16 v1, p2

    .line 102
    .line 103
    move-object v6, p0

    .line 104
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/shutdown/AnimationLoader;-><init>(Ljava/io/File;IJLcom/android/server/power/shutdown/AnimationType;Lcom/android/server/power/shutdown/WebpPlayer;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_3
    return-object v7
.end method

.method public final onFoldStateChanged(Z)V
    .locals 1

    .line 1
    const-string/jumbo p0, "onFoldStateChanged folded = "

    .line 2
    .line 3
    .line 4
    const-string v0, "Shutdown-WebpPlayer"

    .line 5
    .line 6
    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 1
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    const-string/jumbo p0, "onSizeChanged width="

    .line 4
    .line 5
    .line 6
    const-string v0, ", height="

    .line 7
    .line 8
    const-string v1, ", oldWidth="

    .line 9
    .line 10
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, ", oldHeight="

    .line 15
    .line 16
    const-string p2, ","

    .line 17
    .line 18
    invoke-static {p3, p4, p1, p2, p0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "Shutdown-WebpPlayer"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onTableModeChanged half_opened = "

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "Shutdown-WebpPlayer"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final prepare()V
    .locals 4

    .line 1
    const-string v0, "Shutdown-WebpPlayer"

    .line 2
    .line 3
    const-string/jumbo v1, "prepare"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 14
    .line 15
    sget-object v3, Lcom/android/server/power/shutdown/AnimationType;->MAIN:Lcom/android/server/power/shutdown/AnimationType;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/shutdown/WebpPlayer;->makeAnimationLoaders(Ljava/util/List;Ljava/io/File;Lcom/android/server/power/shutdown/AnimationType;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 26
    .line 27
    sget-object v2, Lcom/android/server/power/shutdown/AnimationType;->SUB:Lcom/android/server/power/shutdown/AnimationType;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/shutdown/WebpPlayer;->makeAnimationLoaders(Ljava/util/List;Ljava/io/File;Lcom/android/server/power/shutdown/AnimationType;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    xor-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/android/server/power/shutdown/WebpPlayer;->channingAnimationLoaders(Ljava/util/List;Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/android/server/power/shutdown/WebpPlayer;->channingAnimationLoaders(Ljava/util/List;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 73
    .line 74
    check-cast v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 81
    .line 82
    new-instance v2, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/WebpPlayer;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, v0, Lcom/android/server/power/shutdown/AnimationLoader;->imageResolutionExtractor:Ljava/util/function/Consumer;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/AnimationLoader;->prepare()V

    .line 90
    .line 91
    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    check-cast v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 105
    .line 106
    check-cast p0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->prepare()V

    .line 115
    .line 116
    .line 117
    :cond_1
    return-void
.end method

.method public final setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    instance-of v0, p1, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p0, p1, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;

    .line 8
    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->subImageView:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->subDialog:Landroid/app/Presentation;

    .line 13
    .line 14
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/AnimationLoader;->start()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    .line 40
    .line 41
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/android/server/power/shutdown/AnimationLoader;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->start()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
