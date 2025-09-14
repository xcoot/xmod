.class public final Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIndex:I

.field public final mMaxIndex:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    .line 8
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    .line 10
    return-void
.end method
