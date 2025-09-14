.class public final Lcom/android/server/am/AppRestrictionController$TrackerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInfo:[B

.field public final mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    return-void
.end method
