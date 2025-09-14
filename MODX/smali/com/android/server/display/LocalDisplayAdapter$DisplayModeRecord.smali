.class public final Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMode:Landroid/view/Display$Mode;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$DisplayMode;[F)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v2, p1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 6
    iget v3, p1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 8
    iget v4, p1, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 10
    iget v5, p1, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    .line 12
    iget-object v8, p1, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 14
    sget-object p1, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance p1, Landroid/view/Display$Mode;

    .line 18
    sget-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    move-result v1

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v0, p1

    .line 26
    move-object v7, p2

    .line 27
    invoke-direct/range {v0 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 30
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 32
    return-void
.end method


# virtual methods
.method public final hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 3
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 6
    move-result v0

    .line 7
    iget v1, p1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 13
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 16
    move-result v0

    .line 17
    iget v1, p1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 23
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 30
    move-result v0

    .line 31
    iget v1, p1, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 36
    move-result v1

    .line 37
    if-ne v0, v1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 41
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getVsyncRate()F

    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 48
    move-result p0

    .line 49
    iget p1, p1, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 54
    move-result p1

    .line 55
    if-ne p0, p1, :cond_0

    .line 57
    const/4 p0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p0, 0x0

    .line 60
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DisplayModeRecord{mMode="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo p0, "}"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
