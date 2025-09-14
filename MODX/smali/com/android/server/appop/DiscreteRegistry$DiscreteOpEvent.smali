.class public final Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAttributionChainId:I

.field public final mAttributionFlags:I

.field public final mNoteDuration:J

.field public final mNoteTime:J

.field public final mOpFlag:I

.field public final mUidState:I


# direct methods
.method public constructor <init>(IIJJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p3, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 6
    iput-wide p5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 8
    iput p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 10
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 12
    iput p7, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 14
    iput p8, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 16
    return-void
.end method
