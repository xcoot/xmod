.class public final Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultRouteId:Ljava/lang/String;

.field public final mMediaRoute2InfoType:I

.field public final mNameResource:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    .line 6
    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    .line 10
    return-void
.end method
