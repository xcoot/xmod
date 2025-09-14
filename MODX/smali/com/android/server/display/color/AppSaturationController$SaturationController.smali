.class public final Lcom/android/server/display/color/AppSaturationController$SaturationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mControllerRefs:Ljava/util/List;

.field public final mSaturationLevels:Landroid/util/ArrayMap;

.field public final mTransformMatrix:[F


# direct methods
.method public static -$$Nest$maddColorTransformController(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/lang/ref/WeakReference;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 27
    if-nez v1, :cond_0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/server/display/color/AppSaturationController$SaturationController;->updateState()Z

    .line 51
    move-result p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    :goto_1
    return p0
.end method

.method public static -$$Nest$mdump(Lcom/android/server/display/color/AppSaturationController$SaturationController;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "            mSaturationLevels: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "            mControllerRefs count: "

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 18
    const/16 v0, 0x9

    .line 20
    new-array v0, v0, [F

    .line 22
    iput-object v0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    .line 24
    return-void
.end method


# virtual methods
.method public final updateState()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x64

    .line 4
    move v2, v0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 13
    iget-object v3, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mSaturationLevels:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 25
    if-ge v3, v1, :cond_0

    .line 27
    move v1, v3

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    int-to-float v1, v1

    .line 32
    const/high16 v2, 0x42c80000    # 100.0f

    .line 34
    div-float/2addr v1, v2

    .line 35
    iget-object v2, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mTransformMatrix:[F

    .line 37
    invoke-static {v1, v2}, Lcom/android/server/display/color/AppSaturationController;->computeGrayscaleTransformMatrix(F[F)V

    .line 40
    iget-object p0, p0, Lcom/android/server/display/color/AppSaturationController$SaturationController;->mControllerRefs:Ljava/util/List;

    .line 42
    check-cast p0, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p0

    .line 48
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 66
    if-eqz v1, :cond_2

    .line 68
    sget-object v0, Lcom/android/server/display/color/AppSaturationController;->TRANSLATION_VECTOR:[F

    .line 70
    check-cast v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;

    .line 72
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;->applyAppSaturation([F[F)V

    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    return v0
.end method
