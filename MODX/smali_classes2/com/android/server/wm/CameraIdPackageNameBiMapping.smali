.class public final Lcom/android/server/wm/CameraIdPackageNameBiMapping;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCameraIdToPackageMap:Ljava/util/Map;

.field public final mPackageToCameraIdMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 25
    .line 26
    check-cast v0, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 48
    .line 49
    check-cast v0, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 55
    .line 56
    check-cast p0, Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void
.end method
