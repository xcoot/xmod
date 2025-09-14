.class public final Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public appUid:I

.field public final cameraIdToSession:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 11
    return-void
.end method
