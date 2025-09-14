.class public final Lcom/android/server/net/watchlist/FileHashCache$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLastModified:J

.field public final mSha256Hash:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    .line 7
    .line 8
    return-void
.end method
