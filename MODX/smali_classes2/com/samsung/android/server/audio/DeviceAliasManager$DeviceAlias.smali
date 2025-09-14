.class public final Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAliases:[I

.field public final mExcludeStreams:I


# direct methods
.method public constructor <init>([I[I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mAliases:[I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    move v0, p1

    .line 8
    :goto_0
    array-length v1, p2

    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    aget v1, p2, p1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    shl-int v1, v2, v1

    .line 15
    .line 16
    or-int/2addr v0, v1

    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mExcludeStreams:I

    .line 21
    .line 22
    return-void
.end method
