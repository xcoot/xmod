.class public final Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioDeviceInfoType:I

.field public final mCorrespondsToInactiveBluetoothRoute:Z

.field public final mMediaRoute2Info:Landroid/media/MediaRoute2Info;


# direct methods
.method public constructor <init>(Landroid/media/MediaRoute2Info;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    .line 9
    .line 10
    return-void
.end method
