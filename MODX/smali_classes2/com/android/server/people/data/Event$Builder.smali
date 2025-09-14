.class public final Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDurationSeconds:I

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    .line 7
    .line 8
    return-void
.end method
