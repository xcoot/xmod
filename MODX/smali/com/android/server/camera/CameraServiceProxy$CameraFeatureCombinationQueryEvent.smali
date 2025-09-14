.class public final Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;


# virtual methods
.method public final logSelf()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    .line 3
    iget v1, v0, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_1

    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq v1, v3, :cond_0

    .line 11
    const/16 v3, 0xa

    .line 13
    if-eq v1, v3, :cond_0

    .line 15
    move v10, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    move v10, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v3, 0x0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    if-ne v10, v2, :cond_2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "Unknown feature combination query status code: "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    .line 32
    iget p0, p0, Landroid/hardware/CameraFeatureCombinationStats;->mStatus:I

    .line 34
    const-string v1, "CameraService_proxy"

    .line 36
    invoke-static {v0, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    return-void

    .line 40
    :cond_2
    iget v5, v0, Landroid/hardware/CameraFeatureCombinationStats;->mUid:I

    .line 42
    iget-object v6, v0, Landroid/hardware/CameraFeatureCombinationStats;->mCameraId:Ljava/lang/String;

    .line 44
    iget v7, v0, Landroid/hardware/CameraFeatureCombinationStats;->mQueryType:I

    .line 46
    iget-wide v8, v0, Landroid/hardware/CameraFeatureCombinationStats;->mFeatureCombination:J

    .line 48
    const/16 v4, 0x384

    .line 50
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJI)V

    .line 53
    return-void
.end method
