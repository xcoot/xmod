.class public final Lcom/android/server/wm/DimmerAnimationHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

.field public final mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

.field public final mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field public mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

.field public final mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field public final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final setCurrentAlphaBlur(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 2
    .line 3
    const-string v0, "WindowManager"

    .line 4
    .line 5
    const-string v1, "Tried to change look of dim "

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " after remove, caller="

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 45
    .line 46
    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 50
    .line 51
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, " after remove"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method
