.class public final Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field public static final MAX_SCALE:F


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mLock:Ljava/lang/Object;

.field public final mUsersScales:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    .line 3
    sput v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final getScale(I)F
    .locals 2

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    if-eqz p1, :cond_1

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 8
    sget-boolean v1, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Float;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 33
    move-result p0

    .line 34
    monitor-exit v1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object p1

    .line 45
    const-string v1, "accessibility_display_magnification_scale"

    .line 47
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 49
    invoke-static {p1, v1, v0, p0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final getScalesWithCurrentUser()Landroid/util/SparseArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/util/SparseArray;

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    .line 20
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 22
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_0
    return-object v0
.end method

.method public final putScale(FI)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 6
    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    monitor-exit v0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;F)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "MagnificationScaleProvider{mCurrentUserId="

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v0, "Scale on the default display="

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    .line 25
    move-result v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "Scales on non-default displays="

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScalesWithCurrentUser()Landroid/util/SparseArray;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const/16 p0, 0x7d

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    monitor-exit v1

    .line 51
    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
