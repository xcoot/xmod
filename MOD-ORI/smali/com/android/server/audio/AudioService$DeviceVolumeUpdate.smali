.class public final Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mDevice:I

.field public final mStreamType:I

.field public final mVssVolIndex:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 3
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 4
    iput p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 5
    iput-object p4, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    const/16 p1, -0x801

    .line 8
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 9
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 10
    iput-object p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    return-void
.end method
