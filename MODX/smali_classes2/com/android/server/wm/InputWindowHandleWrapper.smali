.class public final Lcom/android/server/wm/InputWindowHandleWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChanged:Z

.field public final mHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Landroid/view/InputWindowHandle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final setFocusable(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    and-int/2addr v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ne v1, p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    xor-int/2addr p1, v3

    .line 17
    invoke-virtual {v0, v2, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 18
    .line 19
    .line 20
    iput-boolean v3, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 21
    .line 22
    return-void
.end method

.method public final setInputConfigMasked(II)V
    .locals 3

    .line 1
    and-int/2addr p1, p2

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 3
    .line 4
    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 5
    .line 6
    and-int v2, v1, p2

    .line 7
    .line 8
    if-ne p1, v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    not-int p2, p2

    .line 12
    and-int/2addr p2, v1

    .line 13
    or-int/2addr p1, p2

    .line 14
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 18
    .line 19
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 13
    .line 14
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 18
    .line 19
    return-void
.end method

.method public final setOneHandSpecs(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    .line 10
    .line 11
    cmpl-float v1, v1, p2

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    .line 16
    .line 17
    cmpl-float v1, v1, p3

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    .line 23
    .line 24
    iput p2, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    .line 25
    .line 26
    iput p3, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 30
    .line 31
    return-void
.end method

.method public final setToken(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", changed="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
